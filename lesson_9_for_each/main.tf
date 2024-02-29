# resource "aws_iam_user" "example" {
#   count = 3
#   name = "steve-${count.index}"
# }

# #count has only 1 property == count.index (always starts with 0)


# resource "aws_iam_user" "example" {
#   count = length(var.aws_iam_users)
#   name = var.aws_iam_users[count.index]

# }

# resource "aws_iam_user" "example" {
#   for_each = toset(var.aws_iam_users)
#   name = each.key
# }
# for_each.value
# for_each.key

# resource "aws_iam_user" "example" {
#   for_each = toset(var.aws_iam_users)
#   name = each.key
# }

####################################################################

#for_each

# resource "aws_vpc" "vpc" {
#   cidr_block = "10.0.0.0/24"
#   tags = {
#     Name = "vpc"
#   }
# }

# resource "aws_security_group" "sg" {
#   name        = "test-sg"
#   vpc_id      = aws_vpc.vpc.id #sec group attatched to vpc
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   tags = {
#     Name = "sg"
#   }
# }

# resource "aws_security_group_rule" "rule" {
#   for_each = var.rules

#   from_port         = each.value[0]
#   to_port           = each.value[1]
#   type              = each.value[2]
#   protocol          = each.value[3]
#   cidr_blocks       = [each.value[4]] #must be list, that's why we use []
#   description       = each.value[5]
#   security_group_id = aws_security_group.sg.id #same as line 37
# }


#import

# resource "aws_vpc" "manually_built_vpc" {
# cidr_block = "10.0.0.0/16"
# tags = {
#   Name = "build-manually"
# }
# }

# import {
#   to = aws_vpc.manually_built_vpc
#   id = "vpc-0242b1a9f8a8fb79b"
# }

# resource "aws_vpc" "build-manually" {
  
# }

# import {
#   to = aws_vpc.build-manually
#   id = "vpc-06bd592cd73197ff2"
# }
