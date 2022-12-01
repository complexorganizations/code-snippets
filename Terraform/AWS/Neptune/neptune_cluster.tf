# Create a neptune cluster.
resource "aws_neptune_cluster" "neptune_cluster" {
  cluster_identifier                  = "code-snippets-neptune-0-us-east-1"
  engine                              = "neptune"
  backup_retention_period             = 7
  preferred_backup_window             = "07:00-09:00"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  storage_encrypted                   = true
  enable_cloudwatch_logs_exports      = ["audit"]
  tags = {
    # {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}
