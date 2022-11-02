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

# Global Variables
variable "available_zones" {
  description = "The list of zones to use."
  default     = "us-east-1a"
  type        = string
}

variable "instance_size" {
  description = "The size of the instance to use."
  default     = "t2.micro"
  type        = string
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
  instance_tenancy                     = "default"
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
  availability_zone                              = var.available_zones
  vpc_id                                         = aws_vpc.main_vpc.id
  cidr_block                                     = cidrsubnet(aws_vpc.main_vpc.cidr_block, 4, 1)
  ipv6_cidr_block                                = cidrsubnet(aws_vpc.main_vpc.ipv6_cidr_block, 8, 1)
  depends_on                                     = [aws_internet_gateway.main_internet_gateway]
  enable_dns64                                   = true
  map_public_ip_on_launch                        = true
  assign_ipv6_address_on_creation                = true
  enable_resource_name_dns_a_record_on_launch    = true
  enable_resource_name_dns_aaaa_record_on_launch = true
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

# Create a network interface
resource "aws_network_interface" "main_network_interface" {
  subnet_id       = aws_subnet.main_subnet.id
  security_groups = [aws_security_group.main_security_group.id]
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

# Create a nat getaway
resource "aws_nat_gateway" "main_nat_gateway" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.main_subnet.id
  tags = {
    Name = "Main Nat Gateway"
  }
}

# Get the data on the latest ubuntu AMI.
data "aws_ami" "get_current_ubuntu_release" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu-minimal/images/hvm-ssd/ubuntu-jammy-22.04-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Deploy an EC2 instance
resource "aws_instance" "main_instance" {
  ami                         = data.aws_ami.get_current_ubuntu_release.id
  availability_zone           = var.available_zones
  instance_type               = var.instance_size
  key_name                    = aws_key_pair.main_key_pair.key_name
  subnet_id                   = aws_subnet.main_subnet.id
  vpc_security_group_ids      = [aws_security_group.main_security_group.id]
  depends_on                  = [aws_internet_gateway.main_internet_gateway]
  security_groups             = [aws_security_group.main_security_group.id]
  associate_public_ip_address = true
  monitoring                  = true
  hibernation                 = true
  ebs_optimized               = false
  ipv6_address_count          = 1
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
    Name = "Main Instance"
  }
}

# Deploy a EC2 spot instance.
resource "aws_spot_instance_request" "main_spot_instance" {
  ami                         = data.aws_ami.get_current_ubuntu_release.id
  availability_zone           = var.available_zones
  instance_type               = var.instance_size
  key_name                    = aws_key_pair.main_key_pair.key_name
  subnet_id                   = aws_subnet.main_subnet.id
  vpc_security_group_ids      = [aws_security_group.main_security_group.id]
  depends_on                  = [aws_internet_gateway.main_internet_gateway]
  security_groups             = [aws_security_group.main_security_group.id]
  associate_public_ip_address = true
  monitoring                  = true
  hibernation                 = true
  ebs_optimized               = false
  ipv6_address_count          = 1
  root_block_device {
    volume_size           = 10
    delete_on_termination = true
    encrypted             = true
    volume_type           = "standard"
  }
  spot_type            = "one-time"
  wait_for_fulfillment = true
  user_data = <<-EOF
    #!/bin/bash
    apt-get update
    EOF
  tags = {
    Name = "Spot Instance"
  }
}

# Import a SSH key into AWS
resource "aws_key_pair" "main_key_pair" {
  key_name   = "main_key_pair"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF8Mhm+2iTvrBWc7Jmrydyg/UG3tUg5ylxdvGuQamWmD"
  tags = {
    Name = "Main Key Pair"
  }
}

# Deploy an S3 bucket
resource "aws_s3_bucket" "main_s3_bucket" {
  bucket = "p838poug3s49rqconrq6g59eg3rww9u7"
  tags = {
    Name = "Main S3 Bucket"
  }
}

# Deploy an S3 bucket policy
resource "aws_s3_bucket_acl" "main_s3_bucket_acl" {
  bucket = aws_s3_bucket.main_s3_bucket.id
  acl    = "private"
}

# S3 bucket policy
resource "aws_s3_bucket_public_access_block" "main_s3_bucket_policy" {
  bucket                  = aws_s3_bucket.main_s3_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Create a elastic block storage volume
resource "aws_ebs_volume" "main_ebs_volume" {
  availability_zone = var.available_zones
  encrypted         = true
  size              = 50
  type              = "standard"
  tags = {
    Name = "Main EBS Volume"
  }
}

# Create a elastic cache cluster. (redis)
resource "aws_elasticache_cluster" "main_elasti_cache_cluster" {
  cluster_id                 = "suiqa5d83igszdff72xg2ub94sia24o"
  engine                     = "redis"
  auto_minor_version_upgrade = true
  az_mode                    = "single-az"
  node_type                  = "cache.t2.micro"
  num_cache_nodes            = 1
  parameter_group_name       = "default.redis6.x"
  engine_version             = "6.2"
  port                       = 6379
  tags = {
    Name = "Main Redis Cache"
  }
}

# Create a elastic cache cluster. (memcached)
resource "aws_elasticache_cluster" "secondary_elasti_cache_cluster" {
  cluster_id      = "ephnpa5oup5nig3axyzbn3ik3cj8z8tk"
  engine          = "memcached"
  node_type       = "cache.t2.micro"
  port            = 11211
  num_cache_nodes = 1
  tags = {
    Name = "Secondary Memcached Cache"
  }
}
