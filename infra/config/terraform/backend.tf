terraform {
  backend "s3" {
    bucket         = "<%= expansion('infra-terraform-state-:REGION') %>"
    key            = "<%= expansion(':ENV/:BUILD_DIR/terraform.tfstate') %>"
    region         = "<%= expansion(':REGION') %>"
    encrypt        = true
    dynamodb_table = "<%= expansion('terraspace-:ENV-terraform-locks') %>"
  }
}
