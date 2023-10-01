// Create a security group
resource "aws_security_group" "security_group" {
  name        = "{project-name}-sg-{0}"
  description = "Allow SSH traffic"
  vpc_id      = aws_vpc.vpc.id
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    security_groups  = []
  }
  egress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    security_groups  = []
  }
  revoke_rules_on_delete = true
  tags = {
    // {project-name}-sg-{0}
    Name = "code-snippets-sg-0"
  }
}
