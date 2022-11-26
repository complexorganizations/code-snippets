# Create records for the domain
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.checkerlia.com"
  type    = "A"
  ttl     = "300"
  records = ["0.0.0.0"]
}
