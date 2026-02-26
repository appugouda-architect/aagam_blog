module "iam" {
  source       = "../../modules/iam"
  project_name = var.project_name
}

module "lambda" {
  source          = "../../modules/lambda"
  project_name    = var.project_name
  lambda_role_arn = module.iam.lambda_role_arn
}

module "apigateway" {
  source            = "../../modules/apigateway"
  project_name      = var.project_name
  lambda_invoke_arn = module.lambda.lambda_invoke_arn
  lambda_name       = module.lambda.lambda_name
}

# module "test" {
#   source         = "../../modules/test"
#   project_name   = var.project_name
#   log_group_name = module.test.log_group_name
# }
