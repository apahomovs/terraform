#Create 3 S3 buckets:

resource "aws_s3_bucket" "first_vedro" {
  bucket = "apahomovs-bucket-one"

  tags = {
    Name = "firstvedro1"
  }
}
resource "aws_s3_bucket" "second_vedro" {
  bucket = "apahomovs-bucket-two"

  tags = {
    Name = "secondvedro2"
  }
}
resource "aws_s3_bucket" "third_vedro" {
  bucket = "apahomovs-bucket-three"

  tags = {
    Name = "thirdvedro3"
  }
}

############################################################################

#Create 3 VPCs:

resource "aws_vpc" "first_vpc" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "first_vpc"
}
}
resource "aws_vpc" "second_vpc" {
  cidr_block = "10.1.0.0/16"
 tags = {
    Name = "second_vpc"
}
}
resource "aws_vpc" "third_vpc" {
  cidr_block = "10.2.0.0/16"
 tags = {
    Name = "third_vpc"
}
}