resource "random_pet" "bucket_postfix" {
  length = 2
}

module "bucket" {
  source = "../../modules/s3"
  bucket = "${var.service}-bucket-${var.region}-${random_pet.bucket_postfix.id}"
  acl    = var.acl
}

output "bucket_name" {
  description = "Bucket name"
  value       = module.bucket.name
}
