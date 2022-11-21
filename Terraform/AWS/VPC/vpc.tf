# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block                           = "10.0.0.0/16"
  instance_tenancy                     = "default"
  enable_dns_support                   = true
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = true
  enable_network_address_usage_metrics = true
  tags = {
    # {project-name}-vpc-{0}-{us-east-1}
    Name = "code-snippets-vpc-0-us-east-1"
  }
}
