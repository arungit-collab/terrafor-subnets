terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}
resource "aws_vpc" "network" {
  cidr_block = var.aws_vpc
  tags = {
    Name = "nandan"
  }
}
resource "aws_subnet" "subnets" {
  count             = length(var.subnet_info)
  vpc_id            = aws_vpc.network.id
  availability_zone = var.subnet_info[count.index].az
  cidr_block        = var.subnet_info[count.index].cidr
  tags = {
    Name = var.subnet_info[count.index].Name
  }
  depends_on = [aws_vpc.network]

}