
# resource "aws_ssm_parameter" "foo" {
#   name  = "foo"
#   type  = "String"
#   value = "bar"
# } # SYNTAX for below code 

resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc_test.vpc_sri_id # comes from out.tf file
}

# resource "aws_ssm_parameter" "public_subnet_ids" {
#   name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
#   type  = "StringList"
#   value = join("," , module.vpc.public_subnet_ids)
# }

# resource "aws_ssm_parameter" "private_subnet_ids" {
#   name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
#   type  = "StringList"
#   value = join("," , module.vpc.private_subnet_ids)
# }

# resource "aws_ssm_parameter" "database_subnet_ids" {
#   name  = "/${var.project_name}/${var.environment}/database_subnet_ids"
#   type  = "StringList"
#   value = join("," , module.vpc.database_subnet_ids)
# }