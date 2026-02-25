output "api_endpoint" {
  value = module.apigateway.api_endpoint
}

output "lambda_function_name" {
  value = module.lambda.lambda_name
}
