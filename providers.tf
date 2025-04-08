terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "labs3terraformbackend"
    key    = "s3webhosting.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
