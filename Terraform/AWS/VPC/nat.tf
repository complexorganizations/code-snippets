// Create a nat getaway
resource "aws_nat_gateway" "nat" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.subnet.id
  tags = {
    // {project-name}-nat-private-{0}-{us-east-1a}
    Name = "code-snippets-nat-private-0-us-east-1a"
  }
}
