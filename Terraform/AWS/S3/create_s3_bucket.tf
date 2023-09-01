// Deploy an S3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket              = "code-snippets-s3-0-us-east-1"
  force_destroy       = true
  object_lock_enabled = true
  tags = {
    // {project-name}-s3-{0}-{us-east-1}
    Name = "code-snippets-s3-0-us-east-1"
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
  }
}

// Deploy an S3 bucket policy
resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "log-delivery-write"
}

// Deploy an S3 bucket server side encryption.
resource "aws_s3_bucket_server_side_encryption_configuration" "s3_bucket_server_side_encryption" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

// Deploy an s3 bucket public acess control
resource "aws_s3_bucket_public_access_block" "main_s3_bucket_policy" {
  bucket                  = aws_s3_bucket.s3_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

// Deploy an s3 bucket versioning
resource "aws_s3_bucket_versioning" "s3_bucket_versioning" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status     = "Enabled"
    mfa_delete = "Disabled"
  }
}

resource "aws_s3_bucket" "log_bucket" {
  bucket = "code-snippets-s3-0-us-east-1-logs"
}

