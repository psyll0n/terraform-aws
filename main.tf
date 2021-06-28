#############################
# DATA SOURCES
#############################

data "aws_availability_zones" "azs" {}


#############################
# RESOURCES
#############################

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name = "dev-vpc"
  cidr = var.vpc_cidr_range

  azs            = slice(data.aws_availability_zones.azs.names, 0, 2)
  public_subnets = var.public_subnets

  # Database subnets
  database_subnets = var.database_subnets
  database_subnet_group_tags = {
      subnet_type = "database"
  }

  tags = {
      Environment = "dev"
      Team        = "infra"
  }
}