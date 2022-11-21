# Create a DocumentDB cluster.
resource "aws_docdb_cluster" "documentdb_cluster" {
  # {project-name}-documentdb-{0}-{us-east-1}
  cluster_identifier      = "code-snippets-documentdb-0-us-east-1"
  engine                  = "docdb"
  master_username         = "database_username"
  master_password         = "QKHVUgzpW5t6qWPa2hDDvoBU6SKhBgEU"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}
