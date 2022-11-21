# Create a key using KMS
resource "aws_kms_key" "kms_key" {
  description                        = "Create a KMS key to encrypt and decrypt files."
  key_usage                          = "ENCRYPT_DECRYPT"
  customer_master_key_spec           = "SYMMETRIC_DEFAULT"
  bypass_policy_lockout_safety_check = true
  deletion_window_in_days            = 7
  is_enabled                         = true
  enable_key_rotation                = true
  multi_region                       = true
  tags = {
    # {project-name}-kms-{0}-{us-east-1a}
    Name = "code-snippets-kms-0-us-east-1a"
  }
}
