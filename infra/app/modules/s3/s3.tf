resource "aws_s3_bucket" "demo" {
  bucket = var.bucket # If omitted, Terraform will assign a random, unique name.
}

resource "aws_s3_bucket_acl" "demo" {
  bucket = aws_s3_bucket.demo.id
  acl    = var.acl
}

output "name" {
  description = "Bucket name"
  value       = aws_s3_bucket.demo.id
}
