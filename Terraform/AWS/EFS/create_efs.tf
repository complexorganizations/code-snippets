// Create a EFS file system.
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

// Create a EFS backup policy.
resource "aws_efs_backup_policy" "efs_backup_policy" {
  file_system_id = aws_efs_file_system.efs.id
  backup_policy {
    status = "ENABLED"
  }
}

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
