resource "aws_kinesis_stream" "kinesis_stream" {
  // {project-name}-kinesis-video-{0}-{us-east-1}
  name             = "code-snippets-kinesis-video-0-us-east-1"
  shard_count      = 1
  retention_period = 24
  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]
  tags = {
    Name = "code-snippets-kinesis-video-0-us-east-1"
  }
}

// Create a aws kinesis stream consumer.
resource "aws_kinesis_stream_consumer" "kinesis_stream_consumer" {
  name       = "kinesis stream consumer"
  stream_arn = aws_kinesis_stream.kinesis_stream.arn
}
