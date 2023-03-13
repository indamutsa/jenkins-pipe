terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"

    }
  }
  backend "s3" {
    bucket = "example-bucket-arsene"
    key = "eks/terraform.state"
    region = "us-east-1"
  }
}

provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "indamutsa"
}

