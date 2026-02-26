resource "aws_lambda_function" "api" {
  function_name = "${var.project_name}-api"

  role    = var.lambda_role_arn
  handler = "index.handler"
  runtime = "nodejs20.x"

  filename         = "${path.module}/../../placeholder/lambda/placeholder.zip"
  source_code_hash = filebase64sha256("${path.module}/../../placeholder/lambda/placeholder.zip")

  timeout     = 10
  memory_size = 256
}
