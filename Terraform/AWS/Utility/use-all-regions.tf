# This data source is used to get the list of all the AWS regions.
data "aws_regions" "all_aws_regions" {
  all_regions = true
}

# Create a VPC in each region.
resource "aws_vpc" "vpc" {
  count      = length(data.aws_regions.all_aws_regions.names)
  cidr_block = "10.0.0.0/16"
}
