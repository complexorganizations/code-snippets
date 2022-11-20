# Deploy an EC2 instance
resource "aws_instance" "instance" {
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
  credit_specification {
    cpu_credits = "standard"
  }
  root_block_device {
    volume_size           = 10
    delete_on_termination = true
    encrypted             = true
    volume_type           = "standard"
  }
  user_data = <<-EOF
    #!/bin/bash
    apt-get update
    EOF
  tags = {
    # {project-name}-instance-{0}-{us-east-1a}
    Name = "code-snippets-instance-0-us-east-1a"
  }
}
