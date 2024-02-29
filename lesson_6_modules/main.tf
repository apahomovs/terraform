module "dev_vpc" {
  source            = "./vpc_module"
  custom_cidr_block = "10.0.0.0/24"
  custom_vpc_tag    = "dev_vpc"
}

module "subnet_1a" {
  source = "./subnet_module"

  for_each = {
    "public_1a"  = ["10.0.0.0/26", "us-east-1a", true]
    "public_1b"  = ["10.0.0.64/26", "us-east-1a", true]
    "private_1a" = ["10.0.0.128/26", "us-east-1a", false]
    "private_1b" = ["10.0.0.192/26", "us-east-1a", false]
  }

  custom_vpc_id                  = module.dev_vpc.vpc_id
  custom_subnet_tag              = each.key
  custom_availability_zone       = each.value[1]
  custom_map_public_ip_on_launch = each.value[2]
  custom_cidr_block              = each.value[0]
}


