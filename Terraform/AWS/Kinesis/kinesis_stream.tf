resource "aws_kinesis_stream" "kinesis_stream" {
  # {project-name}-kinesis-video-{0}-{us-east-1}
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
