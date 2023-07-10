terraform {
  backend "s3" {
    bucket = "new-aws-bucket-mg"
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}

data "aws_ami" "newami" {
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "name"
    values = ["Appgate-SDP*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

