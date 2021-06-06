provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "state" {
  bucket = var.bucket
  acl    = var.acl
  force_destroy = true
  ## Enabled versioning incase of rollback
  versioning {
    enabled = true
  }
  ## Tag appropriately
  tags = {
    Name        = "vpcstatexyznow"
    Owner       = "Kabir"
    Environment = "Interview"
  }
}