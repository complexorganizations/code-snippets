# Create a redshift cluster
resource "aws_redshift_cluster" "redshift_cluster" {
  # {project-name}-redshift-{0}-{us-east-1}
  cluster_identifier                  = "code-snippets-redshift-0-us-east-1"
  database_name                       = "db_name"
  master_username                     = "database_username"
  master_password                     = "QKHVUgzpW5t6qWPa2hDDvoBU6SKhBgEU"
  node_type                           = "ra3.xlplus"
  publicly_accessible                 = false
  skip_final_snapshot                 = true
  allow_version_upgrade               = true
  apply_immediately                   = true
  automated_snapshot_retention_period = 1
  cluster_type                        = "single-node"
  cluster_version                     = "1.0"
  encrypted                           = true
  number_of_nodes                     = 1
  port                                = 5439
  maintenance_track_name              = "current"
  logging {
    enable = true
  }
}
