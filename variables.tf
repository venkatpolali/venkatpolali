variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "vpc_aws" {
    type = string
    default = "10.1.0.0/16"
}

variable "vpc_name" {
    type = string
    default = "my_test_vpc_1"
}
variable "subnets_aws" {
    default = {
        "subnet_1" = 1
        "subnet_2" = 2
        "subnet_3" = 3
    }
}
variable "instance_aws" {
    type = string
    default = "ami-0182f373e66f89c85"
}

