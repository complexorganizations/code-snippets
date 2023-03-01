// Create a Grafana workspace
resource "aws_grafana_workspace" "grafana_workspace" {
  name                     = "grafana_workspace"
  account_access_type      = "CURRENT_ACCOUNT"
  authentication_providers = ["SAML"]
  permission_type          = "SERVICE_MANAGED"
  role_arn                 = aws_iam_role.grafana_role.arn
}

// Create a IAM role for Grafana
resource "aws_iam_role" "grafana_role" {
  name = "grafana_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "grafana.amazonaws.com"
        }
      },
    ]
  })
}
