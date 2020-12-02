# Using a single workspace:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization ="prabhat"

    workspaces {
      name = "Terraform_lab"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

# S3 Bucket

resource "aws_s3_bucket" "Test" {
    bucket_prefix= "Test-"
  
}