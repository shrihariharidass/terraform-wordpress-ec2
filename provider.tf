terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# cionfigure the aws provider
provider "aws" {
  region = "us-east-1"
}