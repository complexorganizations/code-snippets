resource "aws_egress_only_internet_gateway" "egress_only_internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    # {project-name}-eoig-{0}-{us-east-1a}
    Name = "code-snippets-eoig-0-us-east-1a"
  }
}
