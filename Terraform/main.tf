terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
}

# Create the internet gateway
resource "aws_internet_gateway" "main_internet_gateway" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "Main Internet Gateway"
  }
}

# Create a route table
resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.main_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_internet_gateway.id
  }
  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.main_internet_gateway.id
  }
  tags = {
    Name = "Route Table"
  }
}

# route table association
resource "aws_route_table_association" "main_route_table_association" {
  subnet_id      = aws_subnet.main_subnet.id
  route_table_id = aws_route_table.main_route_table.id
}

# Create a VPC
resource "aws_vpc" "main_vpc" {
  cidr_block                           = "10.0.0.0/16"
  enable_dns_support                   = true
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = true
  enable_network_address_usage_metrics = true
  tags = {
    Name = "Main VPC"
  }
}

# Create a subnet
resource "aws_subnet" "main_subnet" {
  availability_zone               = "us-east-1a"
  vpc_id                          = aws_vpc.main_vpc.id
  cidr_block                      = cidrsubnet(aws_vpc.main_vpc.cidr_block, 8, 1)
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.main_vpc.ipv6_cidr_block, 56, 1)
  depends_on                      = [aws_internet_gateway.main_internet_gateway]
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true
  tags = {
    Name = " Main Subnet"
  }
}

# Create a security group
resource "aws_security_group" "main_security_group" {
  name        = "main_security_group"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.main_vpc.id
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
    Name = "Security Group"
  }
}

# Reserve an static public ip.
resource "aws_eip" "main_elastic_ip" {
  vpc        = true
  instance   = aws_instance.main_instance.id
  depends_on = [aws_internet_gateway.main_internet_gateway]
  tags = {
    Name = "Elastic IP"
  }
}

# Deploy an EC2 instance
resource "aws_instance" "main_instance" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.main_subnet.id
  vpc_security_group_ids      = [aws_security_group.main_security_group.id]
  depends_on                  = [aws_internet_gateway.main_internet_gateway]
  associate_public_ip_address = true
  monitoring                  = true
  ipv6_address_count          = 1
  credit_specification {
    cpu_credits = "standard"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = true
  }
  tags = {
    Name = "Main Instance"
  }
}

# Deploy a EC2 spot instance.
resource "aws_spot_instance_request" "main_ec2_spot_instance" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.main_subnet.id
  vpc_security_group_ids      = [aws_security_group.main_security_group.id]
  depends_on                  = [aws_internet_gateway.main_internet_gateway]
  associate_public_ip_address = true
  monitoring                  = true
  ipv6_address_count          = 1
  root_block_device {
    delete_on_termination = true
    encrypted             = true
  }
  spot_type            = "one-time"
  wait_for_fulfillment = true
  tags = {
    Name = "Spot Instance"
  }
}

# Import a SSH key into AWS
resource "aws_key_pair" "main_key_pair" {
  key_name   = "main_key_pair"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF8Mhm+2iTvrBWc7Jmrydyg/UG3tUg5ylxdvGuQamWmD"
}
