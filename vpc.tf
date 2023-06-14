# Creating VPC
resource "aws_vpc" "my-vpc1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
tags = {
    Name = "my-vpc1"
  }
}

