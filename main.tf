# Provider
provider "aws" {
  region  = var.region
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
}

### VPC #################################################################
resource "aws_vpc" "elpharco-webApp" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = "elpharcoVpc"
  }
}


