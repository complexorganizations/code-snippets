// Create a AWS EFS Access Point
resource "aws_efs_access_point" "efs_access_point" {
  file_system_id = aws_efs_file_system.efs.id
  // "{project-name}-efs-access-point-{0}"
  access_point_id = "code-snippets-efs-access-point-0"
  // "{project-name}-efs-access-point-{0}"
  tags = {
    Name = "code-snippets-efs-access-point-0"
  }
}
