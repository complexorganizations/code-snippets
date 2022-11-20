# Create a lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = "lightsail-instance"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "nano_2_0"
  user_data         = <<-EOF
    #!/bin/bash
    apt-get update
    EOF
  tags = {
    # {project-name}-lightsail-{0}-{us-east-1a}
    Name = "code-snippets-lightsail-0-us-east-1a"
  }
}
