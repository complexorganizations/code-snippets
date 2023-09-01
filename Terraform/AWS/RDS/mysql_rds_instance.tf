// Create a RDS database (mysql)
resource "aws_db_instance" "mysql_rds_instance" {
  allocated_storage                     = 20
  max_allocated_storage                 = 25
  backup_retention_period               = 5
  db_name                               = "db_name"
  engine                                = "mysql"
  engine_version                        = "8.0.30"
  instance_class                        = "db.t2.micro"
  username                              = "database_username"
  password                              = "database_user_password"
  parameter_group_name                  = "default.mysql8.0"
  skip_final_snapshot                   = true
  auto_minor_version_upgrade            = true
  performance_insights_enabled          = true
  storage_encrypted                     = true
  iam_database_authentication_enabled   = true
  monitoring_interval                   = 5
  multi_az                              = true
  allow_major_version_upgrade           = true
  apply_immediately                     = true
  blue_green_update                     = true
  delete_automated_backups              = true
  deletion_protection                   = false
  final_snapshot_identifier             = false
  maintenance_window                    = "Mon:00:00-Mon:01:00"
  performance_insights_retention_period = 7
  port                                  = 5432
  publicly_accessible                   = false
  replica_mode                          = false
  timezone                              = "UTC"
  backup_window                         = "00:00-01:00"
  enabled_cloudwatch_logs_exports       = ["audit"]
  tags = {
    // {project-name}-mysql-rds-{0}-{us-east-1}
    Name = "code-snippets-mysql-rds-0-us-east-1"
  }
}
