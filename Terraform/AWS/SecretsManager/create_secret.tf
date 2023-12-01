resource "aws_secretsmanager_secret" "example" {
  name                           = "example"
  description                    = "This is an example secret"
  recovery_window_in_days        = 7
  force_overwrite_replica_secret = true
  replica {
    region = "us-east-2"
  }
}
