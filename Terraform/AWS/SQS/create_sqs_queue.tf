// Create a SQS Queue
resource "aws_sqs_queue" "sqs_queue" {
  name                       = "code-snippets-sqs-0-us-east-1"
  delay_seconds              = 90
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  tags = {
    // {project-name}-sqs-{0}-{us-east-1}
    Name = "code-snippets-sqs-0-us-east-1"
  }
}
