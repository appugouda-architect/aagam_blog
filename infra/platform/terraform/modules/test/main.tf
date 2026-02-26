resource "aws_cloudwatch_log_group" "pipeline_test" {
  name              = "/aagam-blog/test-log"
  retention_in_days = 1
}
