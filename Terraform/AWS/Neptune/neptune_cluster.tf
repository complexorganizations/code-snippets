# Note: a Neptune cluster needs multiple az

# Error: only lowercase alphanumeric characters and hyphens allowed in "cluster_identifier"
# cluster_identifier = "***project-name***-neptune-***0***-***us-east-1***"

/*
# Create a neptune cluster
resource "aws_neptune_cluster" "neptune_cluster" {
  cluster_identifier                  = "code-snippets-neptune-0-us-east-1"
  engine                              = "neptune"
  backup_retention_period             = 7
  preferred_backup_window             = "07:00-09:00"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  tags = {
    # {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}
*/
