terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.34.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account}:role/TerraformAdminRole"
  }
  default_tags {
    tags = {
      Project = var.project-tag
      Environment = var.environment
      Deployment = "Terraform"
    }
  }
}