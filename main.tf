# Provider
provider "aws" {
  region  = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.41.0"
    }
  }
}

### VPC #################################################################
resource "aws_vpc" "elpharco-webApp" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = "elpharcoVpc"
  }
}


