# Note: a QLDB cluster needs multiple az

# Error: only lowercase alphanumeric characters and hyphens allowed in "cluster_identifier"
# cluster_identifier = "***project-name***-neptune-***0***-***us-east-1***"

/*
# Create a QLDB ledger
resource "aws_qldb_ledger" "qldb_ledger" {
  # {project-name}-qldb-{0}-{us-east-1}
  name             = "code-snippets-qldb-0-us-east-1"
  permissions_mode = "STANDARD"
  deletion_protection = false
}
*/
