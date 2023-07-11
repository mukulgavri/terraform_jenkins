terraform {
  backend "s3" {
    bucket = "new-bucket-muk"
    key    = "iac/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

