/*
// Rotate the secret every 30 days
resource "aws_secretsmanager_secret_rotation" "example" {
  secret_id = aws_secretsmanager_secret.example.id
  rotation_lambda_arn = aws_lambda_function.example.arn
  rotation_rules {
    automatically_after_days = 30
  }
}
*/