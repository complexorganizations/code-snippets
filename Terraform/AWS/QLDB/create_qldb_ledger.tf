# Create a QLDB ledger
resource "aws_qldb_ledger" "qldb_ledger" {
  # {project-name}-qldb-{0}-{us-east-1}
  name                = "code-snippets-qldb-0-us-east-1"
  permissions_mode    = "STANDARD"
  deletion_protection = false
}
