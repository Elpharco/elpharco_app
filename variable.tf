variable "region" {
  default = "us-east-1"
}

variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

variable "os-name" {
  default = "ami-02d7fd1c2af6eead0"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "key-name" {
  default = "elpharco-keyPair"
}

variable "userdata_file" {
  type = string
  
  default = "base_ami_config.sh"
}

###################################
# Public subnet Variables
variable "public_snet1-cidr" {
  default = "10.0.0.0/24"
}
variable "public_snet1-az" {
  default = "us-east-1a"
}
variable "public_snet2-cidr" {
  default = "10.0.1.0/24"
}
variable "public_snet2-az" {
  default = "us-east-1b"
}
###################################
###################################

# Private subnet Variables
variable "private_snet1-cidr" {
  default = "10.0.2.0/24"
}
variable "private_snet1-az" {
  default = "us-east-1a"
}

variable "private_snet2-cidr" {
  default = "10.0.4.0/24"
}
variable "private_snet2-az" {
  default = "us-east-1b"
}

variable "private_snet3-cidr" {
  default = "10.0.5.0/24"
}
variable "private_snet3-az" {
  default = "us-east-1a"
}

variable "private_snet4-cidr" {
  default = "10.0.6.0/24"
}
variable "private_snet4-az" {
  default = "us-east-1b"
}
