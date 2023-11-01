// Create a DMS replication instance
resource "aws_dms_replication_instance" "dms_replication_instance" {
  allocated_storage            = 25
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  engine_version               = "3.1.4"
  multi_az                     = false
  preferred_maintenance_window = "sun:05:00-sun:09:00"
  publicly_accessible          = true
  replication_instance_class   = "dms.t2.micro"
  replication_instance_id      = "test-dms-terraform-replication-instance"
  replication_subnet_group_id  = "test-dms-terraform-replication-subnet-group"
  vpc_security_group_ids       = ["sg-0a1b2c3d"]
}
