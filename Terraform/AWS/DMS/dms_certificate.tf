// Create a DMS certificate
resource "aws_dms_certificate" "dms_certificate" {
  certificate_id = "test-dms-terraform-certificate"
}
