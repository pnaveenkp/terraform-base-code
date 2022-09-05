resource "aws_vpc" "default1" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_name
    Owner       = "Naveen"
    environment = var.env
  }
}

resource "aws_internet_gateway" "default1" {
  vpc_id = aws_vpc.default1.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}



# }
# resource "aws_vpc" "default02" {
#   cidr_block           = "10.2.0.0/16"
#   enable_dns_hostnames = true
#   tags = {
#     Name        = "terraform_testvpc_02"
#     Owner       = "Rajasekhar"
#     environment = "var.dev"
#   }
# }
# resource "aws_vpc" "default3" {
#   cidr_block           = "10.3.0.0/16"
#   enable_dns_hostnames = true
#   tags = {
#     Name        = "terraform_testvpc_3"
#     Owner       = "Rajasekhar"
#     environment = "dev"
#   }
# }
