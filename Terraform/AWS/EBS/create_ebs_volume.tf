# Create a elastic block storage volume
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-1a"
  # [Shisho]: The encryption will use a customer-managed key.
  encrypted  = true
  kms_key_id = aws_kms_key.key_0.arn
  size       = 50
  type       = "standard"
  tags = {
    # {project-name}-ebs-volume-{0}-{us-east-1a}
    Name = "code-snippets-ebs-volume-0-us-east-1a"
  }
}

# Create a key using AWS KMS
resource "aws_kms_key" "key_0" {
  description                        = "Create a key using AWS KMS to encrypt and decrypt files."
  key_usage                          = "ENCRYPT_DECRYPT"
  customer_master_key_spec           = "SYMMETRIC_DEFAULT"
  bypass_policy_lockout_safety_check = false
  deletion_window_in_days            = 7
  is_enabled                         = true
  enable_key_rotation                = true
  multi_region                       = true
  tags = {
    # {project-name}-kms-{0}-{us-east-1a}
    Name = "code-snippets-kms-0-us-east-1a"
  }
}
