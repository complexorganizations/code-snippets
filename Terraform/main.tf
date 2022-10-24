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
}

# Create a route table
resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.main_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    ipv6_cidr_block = "::/0"
    gateway_id = aws_internet_gateway.main_internet_gateway.id
  }
}

# route table association
resource "aws_route_table_association" "main_route_table_association" {
  subnet_id      = aws_subnet.main_subnet.id
  route_table_id = aws_route_table.main_route_table.id
}

# Create a VPC
resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_network_address_usage_metrics = true
}

# Create a subnet
resource "aws_subnet" "main_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  ipv6_native       = true
  enable_dns64      = true
  enable_resource_name_dns_a_record_on_launch = true
  enable_resource_name_dns_aaaa_record_on_launch = true
}

# Create a security group
resource "aws_security_group" "main_security_group" {
  name        = "main_security_group"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.main_vpc.id
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    security_groups = [""]
  }
  egress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    security_groups = [""]
  }
  revoke_rules_on_delete = true
}

# Deploy an EC2 instance
resource "aws_instance" "main_instance" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t1.micro"
  subnet_id                   = aws_subnet.main_subnet.id
  vpc_security_group_ids      = [aws_security_group.main_security_group.id]
  associate_public_ip_address = true
  monitoring                  = true
  depends_on                  = [aws_internet_gateway.main_internet_gateway]
  credit_specification {
    cpu_credits = "unlimited"
  }
}
