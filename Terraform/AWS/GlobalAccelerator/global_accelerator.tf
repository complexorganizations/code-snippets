resource "aws_globalaccelerator_accelerator" "example" {
  name            = "Example"
  ip_address_type = "DUAL_STACK"
  ip_addresses    = ["1.2.3.4"]
  enabled         = true
  attributes {
    flow_logs_enabled   = true
    flow_logs_s3_bucket = "example-bucket"
    flow_logs_s3_prefix = "flow-logs/"
  }
}
