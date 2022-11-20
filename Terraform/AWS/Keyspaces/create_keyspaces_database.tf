# Create a aws keyspaces
resource "aws_keyspaces_keyspace" "keyspaces" {
  name = "keyspaces"
  tags = {
    # "{project-name}-keyspaces-{0}-{us-east-1a}"
    Name = "code-snippets-keyspaces-0-us-east-1a"
  }
}
