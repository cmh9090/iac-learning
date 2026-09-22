terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "learning" {
  bucket = "iac-learning-${random_id.suffix.hex}"
  force_destroy = true
  tags = {
    Name    = "iac-learning-bucket"
    Purpose = "terraform-learning"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.learning.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.learning.arn
}

resource "aws_s3_bucket_versioning" "learning" {
  bucket = aws_s3_bucket.learning.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "learning" {
  bucket = aws_s3_bucket.learning.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}