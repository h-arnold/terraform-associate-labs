terraform {
  required_version = "1.12.1" # Replace with your installed version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Managed_By = "Terraform"
      Project    = "Terraform Training"
    }
  }
}
