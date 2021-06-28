################################
# Outputs
################################

output "vpc_id" {
    value = module.vpc.vpc_id
}

output "db_subnet_group" {
    value = vpc.database_subnet_group
}

output "public_subnets" {
    value = module.vpc.public_subnets
}