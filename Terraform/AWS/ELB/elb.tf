// Create a elastic load balancer
resource "aws_lb" "name" {
  name                             = "name"
  internal                         = false
  load_balancer_type               = "application"
  security_groups                  = [aws_security_group.name.id]
  subnets                          = [aws_subnet.name.id]
  enable_deletion_protection       = false
  enable_cross_zone_load_balancing = true
  idle_timeout                     = 60
  tags = {
    Name = "name"
  }
}
