// Create a new S3 Glacier Vault
resource "aws_glacier_vault" "glacier_vault" {
  name = "glacier_vault"
}

data "aws_iam_policy_document" "example" {
  statement {
    actions   = ["glacier:DeleteArchive"]
    effect    = "Deny"
    resources = [aws_glacier_vault.glacier_vault.arn]
    condition {
      test     = "NumericLessThanEquals"
      variable = "glacier:ArchiveAgeinDays"
      values   = ["365"]
    }
  }
}

// Lock the S3 Glacier Vault
resource "aws_glacier_vault_lock" "glacier_vault_lock" {
  vault_name            = aws_glacier_vault.glacier_vault.name
  policy                = data.aws_iam_policy_document.example.json
  complete_lock         = true
  ignore_deletion_error = false
}
