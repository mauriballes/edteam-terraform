resource "aws_subnet" "default_subnet_7" {
  vpc_id     = data.aws_vpc.default_vpc.id
  cidr_block = "172.31.96.0/20"

  tags = {
    Name = "Default Subnet"
  }
}

module "my_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "Main Module VPC"
  cidr = var.vpc_cidr_block

  azs             = [var.subnet_a_availability_zone, var.subnet_b_availability_zone]
  private_subnets = [var.subnet_a_cidr_block, var.subnet_b_cidr_block]

}

module "my_instance" {
  source = "./mi-modulo"

  ami_id        = "ami-0c02fb55956c7d316"
  instance_name = "Mi Instancia en AWS"
}
