# create a replication subnet group
resource "aws_dms_replication_subnet_group" "dms_replication_subnet_group" {
  replication_subnet_group_description = "test-dms-terraform-replication-subnet-group"
  replication_subnet_group_id          = "test-dms-terraform-replication-subnet-group"
  subnet_ids                           = ["subnet-0a1b2c3d", "subnet-1a2b3c4d"]
  tags {
    Name = "test-dms-terraform-replication-subnet-group"
  }
}
