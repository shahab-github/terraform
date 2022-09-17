terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" #AWS provider version
    }
  }
  required_version = "~> 1.0" #Terraform Version
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
