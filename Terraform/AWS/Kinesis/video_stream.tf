// Create a Kinesis video stream
resource "aws_kinesis_video_stream" "kinesis_video_stream" {
  // {project-name}-kinesis-video-{0}-{us-east-1}
  name                    = "code-snippets-kinesis-video-0-us-east-1"
  data_retention_in_hours = 7
  media_type              = "video/h264"
  tags = {
    Name = "code-snippets-kinesis-video-0-us-east-1"
  }
}
