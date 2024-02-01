// Import a SSH key into AWS
resource "aws_key_pair" "key_pair" {
  key_name   = "key_pair"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF8Mhm+2iTvrBWc7Jmrydyg/UG3tUg5ylxdvGuQamWmD"
  tags = {
    // {project-name}-key-pair-{0}-{us-east-1a}
    Name = "code-snippets-key-pair-0-us-east-1a"
  }
}
