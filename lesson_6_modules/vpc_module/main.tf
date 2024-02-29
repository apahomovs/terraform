resource "aws_vpc" "vpc" {
  cidr_block = var.custom_cidr_block
  
  tags = {
    Name = var.custom_vpc_tag
  }
}
