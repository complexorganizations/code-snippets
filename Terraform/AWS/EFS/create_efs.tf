resource "aws_efs_file_system" "efs" {
  availability_zone_name = "us-east-1a"
  creation_token         = "efs"
  performance_mode       = "generalPurpose"
  throughput_mode        = "bursting"
  encrypted              = true
  tags = {
    // "{project-name}-efs-{0}-{us-east-1a}"
    Name = "code-snippets-efs-0-us-east-1a"
  }
}
