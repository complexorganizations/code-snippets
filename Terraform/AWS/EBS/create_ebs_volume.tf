# Create a elastic block storage volume
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-1a"
  encrypted         = true
  size              = 50
  type              = "standard"
  tags = {
    # {project-name}-ebs-volume-{0}-{us-east-1a}
    Name = "code-snippets-ebs-volume-0-us-east-1a"
  }
}
