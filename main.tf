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

resource "aws_key_pair" "elpharco" {
  key_name   = "elpharco-keyPair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwQ7i50sbLjZuuaCeq/UiOTreC/Lbz6PM5Un9cdjeqiNHhGxUWO5RMQZfKa6V8uUBESjyQ3FYv36gL2XqKbCL93XbulYgFkR5DVCWcFhVeE2J2mRlwegGxSR4e0i6+/6RZVkx2iUiyHjdMOUgDOFTY3ILGcEwCD/0mfNOEQeocOLyAztlnhFsyEpht0v1OnWX8D5Jrs9H9++o+OBlIqyPYQVFGHd7nZVrjtD39CgUK2PZ9iE6uAUz2sXaeXAaxZKveIQgirBjxSuA4a6BSti4wyajIMXGOOc51W+b5Fd5gbpy97/uThnpZ5I3NdGmgvrXeSZcHiE6KHfWzisyr9/6t elpharco-keyPair\n"

  tags = {
    Name = "elpharco-keyPair"
  }
}

