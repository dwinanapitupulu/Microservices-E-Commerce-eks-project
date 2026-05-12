provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "dwina-buck1"

  tags = {
    Name        = "dwina-buck1"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "dwina-buck2"

  tags = {
    Name        = "dwina-buck2"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}
