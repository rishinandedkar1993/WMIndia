provider "aws" {
  access_key = "AKIA3CGKAIKE6J3HEL5Z"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
