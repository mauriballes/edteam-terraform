variable "vpc_cidr_block" {
  type        = string
  description = "AWS VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "subnet_a_cidr_block" {
  type        = string
  description = "AWS Subnet A CIDR block"
  default     = "10.0.10.0/24"
}

variable "subnet_b_cidr_block" {
  type        = string
  description = "AWS Subnet B CIDR block"
  default     = "10.0.20.0/24"
}

variable "subnet_a_availability_zone" {
  type        = string
  description = "AWS Subnet A Availability Zone"
  default     = "us-east-1a"
}

variable "subnet_b_availability_zone" {
  type        = string
  description = "AWS Subnet B Availability Zone"
  default     = "us-east-1b"
}