// This data block retrieves all availability zones from AWS
// that are currently in the 'available' state.
data "aws_availability_zones" "all_aws_availability_zones" {
  state = "available"
}

output "output_all_aws_availability_zones" {
  value = data.aws_availability_zones.all_aws_availability_zones.names
}
