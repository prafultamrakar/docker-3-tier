terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.63"
    }
  }
}

provider "aws" {
    region = "${var.AWS_REGION}"
    shared_credentials_file = "/Users/praful.tamrakar/.aws/"
    profile                 = "business-readonly"
}

provider "aws" {
  alias  = "dev"
  region = "us-east-1"
  shared_credentials_file = "/Users/praful.tamrakar/.aws/"
  profile                 = "business-readonly"
}