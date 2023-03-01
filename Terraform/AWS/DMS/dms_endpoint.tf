// Create a DMS endpoint
resource "aws_dms_endpoint" "dms_endpoint" {
  database_name               = "test"
  endpoint_id                 = "test-dms-terraform-endpoint"
  endpoint_type               = "source"
  engine_name                 = "aurora"
  extra_connection_attributes = ""
  username                    = "test"
  password                    = ""
  port                        = 3306
  server_name                 = "test-dms-terraform"
  ssl_mode                    = "none"
}
