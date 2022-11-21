# Create a subnet
resource "aws_subnet" "subnet" {
  availability_zone                              = "us-east-1a"
  vpc_id                                         = aws_vpc.vpc.id
  cidr_block                                     = cidrsubnet(aws_vpc.vpc.cidr_block, 4, 1)
  ipv6_cidr_block                                = cidrsubnet(aws_vpc.vpc.ipv6_cidr_block, 8, 1)
  depends_on                                     = [aws_internet_gateway.internet_gateway]
  enable_dns64                                   = true
  map_public_ip_on_launch                        = true
  assign_ipv6_address_on_creation                = true
  enable_resource_name_dns_a_record_on_launch    = true
  enable_resource_name_dns_aaaa_record_on_launch = true
  tags = {
    # {project-name}-public-subnet-{0}-{us-east-1a}
    Name = "code-snippets-public-subnet-0-us-east-1a"
  }
}
