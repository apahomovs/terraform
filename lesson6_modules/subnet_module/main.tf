resource "aws_subnet" "subnet" {
  vpc_id = var.custom_vpc_id
  cidr_block = var.custom_cidr_block
  availability_zone = var.custom_availability_zone
  map_public_ip_on_launch = var.custom_map_public_ip_on_launch

  tags = {
    Name = var.custom_subnet_tag
  }
}