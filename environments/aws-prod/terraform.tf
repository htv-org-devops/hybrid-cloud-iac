terraform {
  cloud {
    organization = "hybrid-cloud-doanthesis"
    workspaces {
      name = "ws-aws-prod"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
