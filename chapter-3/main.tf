provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running"

#prevent accidental deletion of this S3 bucket
lifecycle {
  prevent_destroy = true
  }
}

