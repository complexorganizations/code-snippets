# Deploy an S3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket              = "code-snippets-s3-0-us-east-1"
  force_destroy       = true
  object_lock_enabled = true
  tags = {
    # {project-name}-s3-{0}-{us-east-1}
    Name = "code-snippets-s3-0-us-east-1"
  }
}
