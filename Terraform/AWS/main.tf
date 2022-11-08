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

# EC2 Instance Size
variable "instance_size" {
  description = "The size of the instance to use."
  default     = "t2.micro"
  type        = string
}

# Elasti Cache Instance Size
variable "elasticache_instance_size" {
  description = "The elastic cache instance size."
  default     = "cache.t2.micro"
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
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
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
  user_data            = <<-EOF
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
  bucket              = "p838poug3s49rqconrq6g59eg3rww9u7"
  force_destroy       = true
  object_lock_enabled = true
  tags = {
    Name = "Main S3 Bucket"
  }
}

# Deploy an S3 bucket policy
resource "aws_s3_bucket_acl" "main_s3_bucket_acl" {
  bucket = aws_s3_bucket.main_s3_bucket.id
  acl    = "private"
}

# Deploy an S3 bucket versioning
resource "aws_s3_bucket_versioning" "main_s3_bucket_versioning" {
  bucket = aws_s3_bucket.main_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Deploy an S3 bucket server side encryption.
resource "aws_s3_bucket_server_side_encryption_configuration" "main_s3_server_side_encryption" {
  bucket = aws_s3_bucket.main_s3_bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
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
  node_type                  = var.elasticache_instance_size
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
  node_type       = var.elasticache_instance_size
  port            = 11211
  num_cache_nodes = 1
  tags = {
    Name = "Secondary Memcached Cache"
  }
}

# Create a timestream database
resource "aws_timestreamwrite_database" "main_time_stream_database" {
  database_name = "main_time_stream_database"
  tags = {
    Name = "Main Timestream database"
  }
}

/*

# Create a RDS database (mysql)
resource "aws_db_instance" "main_rds_mysql_database" {
  allocated_storage     = 20
  max_allocated_storage = 25
  db_name               = "db_name"
  engine                = "mysql"
  engine_version        = "8.0.30"
  instance_class        = "db.t2.micro"
  username              = "database_username"
  password              = "database_user_password"
  parameter_group_name  = "default.mysql8.0"
  skip_final_snapshot   = true
  tags = {
    Name = "Main RDS MySQL Database"
  }
}

# Create a RDS database (postgres)
resource "aws_db_instance" "main_rds_postgres_database" {
  allocated_storage          = 20
  max_allocated_storage      = 25
  storage_type               = "standard"
  engine                     = "postgres"
  engine_version             = "12"
  instance_class             = "db.t2.micro"
  name                       = "db_name"
  username                   = "database_username"
  password                   = "database_user_password"
  skip_final_snapshot        = true
  auto_minor_version_upgrade = true
  tags = {
    Name = "Main RDS Postgres Database"
  }
}

# Create a neptune cluster
resource "aws_neptune_cluster" "main_neptune_cluster" {
  cluster_identifier                  = "main-neptune-cluster"
  engine                              = "neptune"
  backup_retention_period             = 7
  preferred_backup_window             = "07:00-09:00"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  tags = {
    Name = "Main Neptune Cluster"
  }
}

# Create a DocumentDB cluster
resource "aws_docdb_cluster" "main_docdb_cluster" {
  cluster_identifier      = "main-docdb-cluster"
  engine                  = "docdb"
  master_username         = "database_username"
  master_password         = "QKHVUgzpW5t6qWPa2hDDvoBU6SKhBgEU"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}

*/

# Create a lightsail instance
resource "aws_lightsail_instance" "main_light_sail_instance" {
  name              = "main_light_sail_instance"
  availability_zone = var.available_zones
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "nano_2_0"
  user_data         = <<-EOF
    #!/bin/bash
    apt-get update
    EOF
  tags = {
    Name = "Main Lightsail Instance"
  }
}

# Get the list of aws regions
data "aws_regions" "list_all_aws_regions" {
  all_regions = true
}

output "output_all_aws_regions" {
  value = data.aws_regions.list_all_aws_regions.names
}

# Get the list of aws availability zones
data "aws_availability_zones" "list_all_aws_availability_zones" {
  all_availability_zones = true
}

output "output_all_aws_availability_zones" {
  value = data.aws_availability_zones.list_all_aws_availability_zones.names
}

# Create a redshift cluster
resource "aws_redshift_cluster" "main_redshift_cluster" {
  cluster_identifier                  = "main-redshift-cluster"
  database_name                       = "db_name"
  master_username                     = "database_username"
  master_password                     = "QKHVUgzpW5t6qWPa2hDDvoBU6SKhBgEU"
  node_type                           = "ra3.xlplus"
  publicly_accessible                 = true
  skip_final_snapshot                 = true
  allow_version_upgrade               = true
  apply_immediately                   = true
  automated_snapshot_retention_period = 1
  cluster_type                        = "single-node"
  cluster_version                     = "1.0"
  encrypted                           = true
  number_of_nodes                     = 1
  port                                = 5439
  maintenance_track_name              = "current"
}

# Create a aws keyspaces
resource "aws_keyspaces_keyspace" "main_keyspaces" {
  name = "main_keyspaces"
  tags = {
    Name = "Main Keyspace"
  }
}

# Create a aws backup vault
resource "aws_backup_vault" "main_backup_vault" {
  name = "main_backup_vault"
  tags = {
    Name = "Main Backup Vault"
  }
}

# Create a aws backup plan
resource "aws_backup_plan" "backup_plan" {
  name = "backup_plan"
  rule {
    rule_name         = "backup_rule"
    target_vault_name = aws_backup_vault.main_backup_vault.name
    schedule          = "cron(0 12 * * ? *)"
    lifecycle {
      delete_after = 14
    }
  }
  advanced_backup_setting {
    backup_options = {
      WindowsVSS = "enabled"
    }
    resource_type = "EC2"
  }
}
