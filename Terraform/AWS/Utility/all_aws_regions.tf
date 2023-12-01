# This data source is used to get the list of all the AWS regions.
data "aws_regions" "all_aws_regions" {
  all_regions = true
}

output "output_all_aws_regions" {
  value = data.aws_regions.all_aws_regions.names
}
