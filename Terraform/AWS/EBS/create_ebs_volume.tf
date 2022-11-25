# Create a elastic block storage volume
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-1a"
  # [Shisho]: The encryption will use a customer-managed key.
  encrypted = true
  kms_key_id = aws_kms_key.example.arn
  size              = 50
  type              = "standard"
  tags = {
    # {project-name}-ebs-volume-{0}-{us-east-1a}
    Name = "code-snippets-ebs-volume-0-us-east-1a"
  }
}

# [Shisho]: See the following document:
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key
resource "aws_kms_key" "example" {
  description             = "example"
  deletion_window_in_days = 10
}

