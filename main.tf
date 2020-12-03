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


resource "aws_instance" "tags_linux" {

    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
      "Name" = "Lvm"
      "envrionment" = "Dev"
      "Type" = "LAB"
    }
}