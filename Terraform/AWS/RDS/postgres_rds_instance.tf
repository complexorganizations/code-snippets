# Create a RDS database (postgres)
resource "aws_db_instance" "postgres_rds_instance" {
  allocated_storage            = 20
  max_allocated_storage        = 25
  backup_retention_period      = 5
  storage_type                 = "standard"
  engine                       = "postgres"
  engine_version               = "12"
  instance_class               = "db.t2.micro"
  name                         = "db_name"
  username                     = "database_username"
  password                     = "database_user_password"
  skip_final_snapshot          = true
  auto_minor_version_upgrade   = true
  performance_insights_enabled = true
  storage_encrypted            = true
  tags = {
    Name = "code-snippets-rds-postgres-0-us-east-1"
  }
}
