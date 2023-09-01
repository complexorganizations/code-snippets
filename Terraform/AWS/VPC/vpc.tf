// Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block                           = "10.0.0.0/16"
  instance_tenancy                     = "default"
  enable_dns_support                   = true
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = true
  enable_network_address_usage_metrics = true
  tags = {
    // {project-name}-vpc-{0}-{us-east-1}
    Name = "code-snippets-vpc-0-us-east-1"
  }
}

// Enable vpc flow logs
resource "aws_flow_log" "vpc_flow_log" {
  iam_role_arn    = aws_iam_role.vpc_flow_log_role.arn
  log_destination = aws_cloudwatch_log_group.vpc_flow_log_group.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.vpc.id
}

// Create a VPC flow log role
resource "aws_iam_role" "vpc_flow_log_role" {
  name               = "code-snippets-vpc-flow-log-role-0-us-east-1"
  assume_role_policy = data.aws_iam_policy_document.vpc_flow_log_role_assume_policy.json
  tags = {
    Name = "code-snippets-vpc-flow-log-role-0-us-east-1"
  }
}

// Create a VPC flow log role assume policy
data "aws_iam_policy_document" "vpc_flow_log_role_assume_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["vpc-flow-logs.amazonaws.com"]
    }
  }
}

// Create a cloudwatch log group
resource "aws_cloudwatch_log_group" "vpc_flow_log_group" {
  name              = "code-snippets-vpc-flow-log-group-0-us-east-1"
  retention_in_days = 30
  tags = {
    Name = "code-snippets-vpc-flow-log-group-0-us-east-1"
  }
  kms_key_id = aws_kms_key.key_1.arn
}

// Create a key using AWS KMS
resource "aws_kms_key" "key_1" {
  description                        = "Create a key using AWS KMS to encrypt and decrypt files."
  key_usage                          = "ENCRYPT_DECRYPT"
  customer_master_key_spec           = "SYMMETRIC_DEFAULT"
  bypass_policy_lockout_safety_check = false
  deletion_window_in_days            = 7
  is_enabled                         = true
  enable_key_rotation                = true
  multi_region                       = true
  tags = {
    // {project-name}-kms-{0}-{us-east-1a}
    Name = "code-snippets-kms-1-us-east-1a"
  }
}
