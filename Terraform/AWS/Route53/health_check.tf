// Create a route53 health check
resource "aws_route53_health_check" "health_check" {
  fqdn              = "checkerlia.com"
  port              = 80
  type              = "HTTP"
  resource_path     = "/"
  failure_threshold = "5"
  request_interval  = "30"
  tags = {
    Name = "tf-test-health-check"
  }
}
