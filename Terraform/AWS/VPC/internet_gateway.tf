// Create the internet gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    // {project-name}-igw-{0}-{us-east-1a}
    Name = "code-snippets-igw-0-us-east-1a"
  }
}
