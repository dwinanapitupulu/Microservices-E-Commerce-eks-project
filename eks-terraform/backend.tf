terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "dwina-buck2"
    key    = "k8/terraform.tfstate"
    region = "ap-southeast-1"
  }

  required_version = ">= 1.6.3"
}
