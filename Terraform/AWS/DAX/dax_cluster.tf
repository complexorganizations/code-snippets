// Create a DAX cluster
resource "aws_dax_cluster" "dax_cluster" {
  cluster_endpoint_encryption_type = "TLS"
  iam_role_arn                     = "arn:aws:iam::123456789012:role/dax_role"
  cluster_name                     = "dax-cluster"
  node_type                        = "dax.r4.large"
  replication_factor               = 1
  availability_zones               = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description                      = "DAX cluster for testing"
  maintenance_window               = "sun:01:00-sun:02:00"
  server_side_encryption {
    enabled = true
  }
}