// Create a new S3 Glacier Vault
resource "aws_glacier_vault" "glacier_vault" {
  name = "glacier_vault"
}
