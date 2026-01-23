terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "hackathon-tfstate-822619186337-us-east-1"
    key            = "environments/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "hackathon-tf-lock"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}