
terraform {
  required_version = ">= 0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
    backend "s3" {
    bucket = "terraform-gopals10s1"
    key    = "root/terraform.tfstate"
    region = "us-east-1" 

    dynamodb_table = "terraform-tfstate-table1"        
  }
}


provider "aws" {
  region  = var.aws_region
  profile = "default"
}

