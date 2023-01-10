resource "aws_api_gateway_rest_api" "jobwave_uk_api" {
  name = "jobwave-api"
}

#Api gateway mail resource configs
resource "aws_api_gateway_resource" "jobwave_mail_resource" {
  parent_id   = aws_api_gateway_rest_api.jobwave_uk_api.root_resource_id
  path_part   = "mail"
  rest_api_id = aws_api_gateway_rest_api.jobwave_uk_api.id
}

resource "aws_api_gateway_method" "jobwave_mail_method" {
  authorization = "NONE"
  http_method   = "GET"
  resource_id   = aws_api_gateway_resource.jobwave_mail_resource.id
  rest_api_id   = aws_api_gateway_rest_api.jobwave_uk_api.id
}

resource "aws_api_gateway_integration" "jobwave_mail_integration" {
  resource_id             = aws_api_gateway_resource.jobwave_mail_resource.id
  rest_api_id             = aws_api_gateway_rest_api.jobwave_uk_api.id
  http_method             = aws_api_gateway_method.jobwave_mail_method.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri = aws_lambda_function.send_mail_lambda.invoke_arn
}

resource "aws_api_gateway_deployment" "jobwave_mail_deployment" {
  rest_api_id = aws_api_gateway_rest_api.jobwave_uk_api.id

  triggers = {
    redeployment = sha1(jsonencode(aws_api_gateway_rest_api.jobwave_uk_api.body))
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_method_response" "jobwave_mail_200_response" {
  http_method = aws_api_gateway_method.jobwave_mail_method.http_method
  resource_id = aws_api_gateway_resource.jobwave_mail_resource.id
  rest_api_id = aws_api_gateway_rest_api.jobwave_uk_api.id
  status_code = 200
}

resource "aws_api_gateway_integration_response" "jobwave_mail_200_integartion_response" {
  http_method = aws_api_gateway_method.jobwave_mail_method.http_method
  resource_id = aws_api_gateway_resource.jobwave_mail_resource.id
  rest_api_id = aws_api_gateway_rest_api.jobwave_uk_api.id
  status_code = 200

  depends_on = [
    aws_api_gateway_integration.jobwave_mail_integration
  ]
}

#API gateway stage resource
resource "aws_api_gateway_stage" "jobwave_v1_stage" {
  deployment_id = aws_api_gateway_deployment.jobwave_mail_deployment.id
  rest_api_id   = aws_api_gateway_rest_api.jobwave_uk_api.id
  stage_name    = "v1"
}

#API gateway custom domain name
resource "aws_api_gateway_domain_name" "jobwave_api_subdomain" {
  domain_name = "api.${var.domain_name}"
  certificate_arn = aws_acm_certificate_validation.cert_validation.certificate_arn
  endpoint_configuration {
    types = ["EDGE"]
  }

  security_policy = "TLS_1_2"
}

resource "aws_lambda_permission" "apigw" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.send_mail_lambda.function_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "${aws_api_gateway_rest_api.jobwave_uk_api.execution_arn}/*/*"
}

resource "aws_api_gateway_base_path_mapping" "jobwave_subdomain_map_apigw" {
  api_id      = aws_api_gateway_rest_api.jobwave_uk_api.id
  stage_name = aws_api_gateway_stage.jobwave_v1_stage.stage_name
  domain_name = aws_api_gateway_domain_name.jobwave_api_subdomain.domain_name
}


#Subdomain route 53 Alias record
resource "aws_route53_record" "jobwave_custom_domain_resource" {
  name    = aws_api_gateway_domain_name.jobwave_api_subdomain.domain_name
  type    = "A"
  zone_id = aws_route53_zone.main.zone_id

  alias {
    evaluate_target_health = true
    name                   = aws_api_gateway_domain_name.jobwave_api_subdomain.cloudfront_domain_name
    zone_id                = aws_api_gateway_domain_name.jobwave_api_subdomain.cloudfront_zone_id
  }
}
