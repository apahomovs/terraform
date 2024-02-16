#create vpc

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "myvpc"
  }
}


#get all availability zones
#data call == lookup function

data "aws_availability_zones" "available" {
  state = "available"
}
#result of this data call ^^ : ["us-east-1a, us-east-1b, us-east-1c, us-east-1d, us-east-1e, us-east-1f"]
#create subnets

resource "aws_subnet" "public1a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.0/26"
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public1a"
  }
}
resource "aws_subnet" "private1a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.64/26"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[1]


  tags = {
    Name = "private1a"
  }
}
resource "aws_subnet" "public1b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.128/26"
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[2]

  tags = {
    Name = "public1b"
  }
}
resource "aws_subnet" "private1b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.192/26"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[3]

  tags = {
    Name = "private1b"
  }
}

#create igw
resource "aws_internet_gateway" "myvpc_igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "myvpc_igw"
  }
}

#build eip for nat
resource "aws_eip" "nat_eip" {
  domain   = "vpc"
  tags = {
    Name = "eip"
  }
}

#create nat-gw
resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public1a.id
  depends_on = [aws_internet_gateway.myvpc_igw]

  tags = {
    Name = "natgw"
  }
}