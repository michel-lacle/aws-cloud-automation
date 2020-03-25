resource "aws_s3_bucket_object" "aws-cloud-automation-bucket-object" {
  bucket = aws_s3_bucket.aws-cloud-automation-s3.bucket
  key = "hello.txt"
  source = "hello.txt"

  tags = {
    Owner = "terraform-aws-cloud-automation"
    Project = "aws-cloud-automation-"
  }
}