data "aws_vpc" "default_vpc" {
  cidr_block = "172.31.0.0/16"
}

data "aws_subnet" "default_subnet_1" {
  cidr_block = "172.31.0.0/20"
}

data "aws_subnet" "default_subnet_2" {
  cidr_block = "172.31.16.0/20"
}

data "aws_subnet" "default_subnet_3" {
  cidr_block = "172.31.32.0/20"
}

data "aws_subnet" "default_subnet_4" {
  cidr_block = "172.31.48.0/20"
}

data "aws_subnet" "default_subnet_5" {
  cidr_block = "172.31.64.0/20"
}

data "aws_subnet" "default_subnet_6" {
  cidr_block = "172.31.80.0/20"
}