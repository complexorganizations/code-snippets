# Create a aws backup plan
resource "aws_backup_plan" "backup_plan" {
  # "{project-name}-backup-plan-{0}-{us-east-1a}"
  name = "code-snippets-backup-plan-0-us-east-1a"
  rule {
    completion_window        = 180
    enable_continuous_backup = false
    rule_name                = "backup_rule"
    start_window             = 60
    target_vault_name        = aws_backup_vault.backup_vault.name
    schedule                 = "cron(0 0 * * ? *)"
    lifecycle {
      delete_after = 14
    }
  }
  advanced_backup_setting {
    backup_options = {
      WindowsVSS = "enabled"
    }
    resource_type = "EC2"
  }
  tags = {
    Name = "code-snippets-backup-plan-0-us-east-1a"
  }
}
