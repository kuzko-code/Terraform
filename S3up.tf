resource "aws_s3_bucket" "name" {
  bucket = "S3-test-bucket"
  acl = "private"

  tags = {
    "Name" = "S3-test-bucket"
  }
}