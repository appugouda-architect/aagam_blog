output "lambda_invoke_arn" {
  value = aws_lambda_function.api.invoke_arn
}

output "lambda_name" {
  value = aws_lambda_function.api.function_name
}
