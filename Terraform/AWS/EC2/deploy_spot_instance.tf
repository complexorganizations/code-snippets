# Deploy a EC2 spot instance.
resource "aws_spot_instance_request" "spot_instance" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  monitoring                  = true
  hibernation                 = true
  ebs_optimized               = false
  /*
  availability_zone           = "us-east-1a"
  placement_group             = aws_placement_group.placement_group.name
  key_name                    = aws_key_pair.<KEY_PAIR>.<KEY_NAME>
  subnet_id                   = aws_subnet.<SUBNET>.id
  vpc_security_group_ids      = [aws_security_group.<SECURITY_GROUP>.id]
  depends_on                  = [aws_internet_gateway.<INTERNET_GETAWAY>]
  security_groups             = [aws_security_group.<SECURITY_GROUP>.id]
  ipv6_address_count          = 1
  */
  root_block_device {
    volume_size           = 10
    delete_on_termination = true
    encrypted             = true
    volume_type           = "standard"
  }
  spot_type            = "one-time"
  wait_for_fulfillment = true
  user_data            = <<-EOF
    #!/bin/bash
    apt-get update
    EOF
  tags = {
    # {project-name}-spot-{0}-{us-east-1a}
    Name = "code-snippets-spot-0-us-east-1a"
  }
}
