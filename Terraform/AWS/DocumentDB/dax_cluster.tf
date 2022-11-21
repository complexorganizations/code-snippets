/*
resource "aws_dax_cluster" "dax_cluster" {
  # {project-name}-dax-{0}-{us-east-1}
  cluster_name = "code-snippets-dax-0-us-east-1"
  node_type    = "dax.t2.small"
  replication_factor = 3
  tags = {
    Name = "code-snippets-dax-0-us-east-1"
  }
}
*/