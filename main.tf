provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_aws
  tags = {
    name = var.vpc_name
  }
}

resource "aws_subnet" "my_subnet" {
  for_each = var.subnets_aws
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = cidrsubnet(var.vpc_aws, 8,each.value)
  depends_on = [aws_vpc.my_vpc]
}

resource "aws_instance" "my_instance" {
  ami = var.instance_aws
  instance_type = "t2.micro"
  subnet_id = aws_subnet.my_subnet["subnet_1"].id
  depends_on = [aws_subnet.my_subnet]
}

output "instance_private_ip" {
  value = aws_instance.my_instance.private_ip
}