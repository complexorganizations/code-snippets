// Get the list of aws availability zones
data "aws_availability_zones" "all_aws_availability_zones" {
  all_availability_zones = true
}

output "output_all_aws_availability_zones" {
  value = data.aws_availability_zones.all_aws_availability_zones.names
}
