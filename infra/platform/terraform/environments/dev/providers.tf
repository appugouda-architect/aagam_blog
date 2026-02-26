terraform {
  required_version = ">= 1.6"

  backend "s3" {
    bucket         = "aagam-blog-tfstate"
    key            = "dev/platform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "aagam-blog-tfstate-lock"
    encrypt        = true
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
