// Reserve an static public ip.
resource "aws_eip" "eip" {
  vpc = true
  tags = {
    // {project-name}-eip-{0}-{us-east-1a}
    Name = "code-snippets-eip-0-us-east-1a"
  }
}
