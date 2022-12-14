// Create a RDS database (mysql)
resource "aws_db_instance" "mysql_rds_instance" {
  allocated_storage                   = 20
  max_allocated_storage               = 25
  backup_retention_period             = 5
  db_name                             = "db_name"
  engine                              = "mysql"
  engine_version                      = "8.0.30"
  instance_class                      = "db.t2.micro"
  username                            = "database_username"
  password                            = "database_user_password"
  parameter_group_name                = "default.mysql8.0"
  skip_final_snapshot                 = true
  performance_insights_enabled        = true
  storage_encrypted                   = true
  iam_database_authentication_enabled = true
  monitoring_interval                 = 5
  multi_az                            = true
  auto_minor_version_upgrade          = true
  publicly_accessible                 = false
  enabled_cloudwatch_logs_exports     = ["audit"]
  tags = {
    // {project-name}-mysql-rds-{0}-{us-east-1}
    Name = "code-snippets-mysql-rds-0-us-east-1"
  }
}
