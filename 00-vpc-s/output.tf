output "vpc_sri_id" {
    value = module.vpc_test.vpc_sri_id
} 



output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
    value = module.vpc.public_subnet_ids
}

output "database_subnet_ids" {
    value = module.vpc.public_subnet_ids
}