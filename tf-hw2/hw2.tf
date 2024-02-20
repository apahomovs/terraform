#Create vpc

resource "aws_vpc" "hw2" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "hw2"
  }
}

#2 public subnets:



