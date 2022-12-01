# Create a DocumentDB cluster instance
resource "aws_docdb_cluster_instance" "docdb_cluster_instance" {
  count              = 2
  identifier         = "docdb-cluster-instance-${count.index}"
  cluster_identifier = aws_docdb_cluster.documentdb_cluster.id
  instance_class     = "db.t2.small"
}

# Create a DocumentDB cluster.
resource "aws_docdb_cluster" "documentdb_cluster" {
  # {project-name}-documentdb-{0}-{us-east-1}
  cluster_identifier              = "code-snippets-documentdb-0-us-east-1"
  engine                          = "docdb"
  master_username                 = "database_username"
  master_password                 = "QKHVUgzpW5t6qWPa2hDDvoBU6SKhBgEU"
  backup_retention_period         = 7
  preferred_backup_window         = "07:00-09:00"
  skip_final_snapshot             = true
  storage_encrypted               = true
  apply_immediately               = true
  deletion_protection             = false
  port                            = 27017
  enabled_cloudwatch_logs_exports = ["audit"]
  db_cluster_parameter_group_name = aws_docdb_cluster_parameter_group.documentdb_cluster_parameter_group.name
}

# Create a DocumentDB cluster parameter group.
resource "aws_docdb_cluster_parameter_group" "documentdb_cluster_parameter_group" {
  # {project-name}-documentdb-cluster-parameter-group-{0}-{us-east-1}
  name   = "code-snippets-documentdb-cluster-parameter-group-0-us-east-1"
  family = "docdb3.6"
  parameter {
    name  = "tls"
    value = "disabled"
  }
}
