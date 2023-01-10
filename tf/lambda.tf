resource "aws_iam_role" "send_mail_lambda_role" {
  name = "homepage_lambda_role"

  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  }
  EOF
}

resource "aws_lambda_function" "send_mail_lambda" {
  function_name = "sendmail_lambda"
  role          = aws_iam_role.send_mail_lambda_role.arn
  runtime = "provided"
  handler = "uk.jobwave.lambda"
  filename = "../lambda/build/function.zip"
  source_code_hash = filebase64sha256("../lambda/build/function.zip")
  memory_size = 1024
  environment {
    variables = {
      DISABLE_SIGNAL_HANDLERS = "true"
    }
  }
}
