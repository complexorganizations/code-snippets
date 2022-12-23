// This data block retrieves all availability zones from AWS
// that are currently in the 'available' state.
data "aws_availability_zones" "available_availability_zones" {
  state = "available"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet for each availability zone
resource "aws_subnet" "main" {
  count             = length(data.aws_availability_zones.available_availability_zones.names)
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available_availability_zones.names[count.index]
}
