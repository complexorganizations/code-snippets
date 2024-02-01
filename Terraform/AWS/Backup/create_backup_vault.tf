// Create a aws backup vault
resource "aws_backup_vault" "backup_vault" {
  // "{project-name}-backup-vault-{0}-{us-east-1a}"
  name          = "code-snippets-backup-vault-0-us-east-1a"
  force_destroy = false
  tags = {
    Name = "code-snippets-backup-vault-0-us-east-1a"
  }
}
