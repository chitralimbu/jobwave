#https bucket
resource "aws_s3_bucket" "jobwave_bucket" {
  bucket = "www.${var.bucket_name}"

  tags = var.common_tags
}

resource "aws_s3_bucket_acl" "jobwave_bucket_acl" {
  bucket = aws_s3_bucket.jobwave_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_cors_configuration" "jobwave_cors_config" {
  bucket = aws_s3_bucket.jobwave_bucket.bucket
  cors_rule {
    allowed_headers = ["Authorization", "Conent-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://www.${var.domain_name}"]
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket_website_configuration" "jobwave_bucket_website" {
  bucket = aws_s3_bucket.jobwave_bucket.bucket
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html"
  }
}

resource "aws_s3_bucket_policy" "jobwave_bucket_policy" {
  bucket = aws_s3_bucket.jobwave_bucket.bucket
  policy = templatefile("templates/s3Policy.json", {
    bucket = "www.${var.bucket_name}"
  })
}

resource "aws_s3_bucket_versioning" "jobwave_bucket_versioning" {
  bucket = aws_s3_bucket.jobwave_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}

#http bucket redirect to https
resource "aws_s3_bucket" "root_bucket" {
  bucket = var.bucket_name

  tags = var.common_tags
}

resource "aws_s3_bucket_acl" "jobwave_root_bucket_acl" {
  bucket = aws_s3_bucket.root_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "jobwave_root_website_config" {
  bucket = aws_s3_bucket.root_bucket.bucket
  redirect_all_requests_to {
    host_name = "https://www.${var.domain_name}"
  }
}

resource "aws_s3_bucket_policy" "jobwave_root_bucket_policy" {
  bucket = aws_s3_bucket.root_bucket.bucket
  policy = templatefile("templates/s3Policy.json", {
    bucket = var.bucket_name
  })
}

resource "aws_s3_bucket_versioning" "jobwave_root_bucket_versioning" {
  bucket = aws_s3_bucket.root_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}