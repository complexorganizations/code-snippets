// Create SNS service
resource "aws_sns_topic" "sns" {
  // "{project-name}-sns-{0}-{us-east-1}"
  name                        = "code-snippets-sns-0-us-east-1.fifo"
  fifo_topic                  = true
  content_based_deduplication = true
}
