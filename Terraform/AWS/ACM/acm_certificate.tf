// Create a ACM certificate
resource "aws_acm_certificate" "acm_certificate" {
  domain_name       = "checkerlia.com"
  validation_method = "DNS"
}

// Create a ACM certificate validation
resource "aws_acm_certificate_validation" "acm_certificate_validation" {
  certificate_arn         = aws_acm_certificate.acm_certificate.arn
  validation_record_fqdns = [aws_route53_record.acm_certificate_validation.fqdn]
}