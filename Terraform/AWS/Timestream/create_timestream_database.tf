# Note: a timestream cluster needs multiple az

# Error: only lowercase alphanumeric characters and hyphens allowed in "cluster_identifier"
# cluster_identifier = "***project-name***-neptune-***0***-***us-east-1***"

/*
# Create a timestream database
resource "aws_timestreamwrite_database" "timestream_database" {
  database_name = "timestream-database"
  tags = {
    # {project-name}-timestream-{0}-{us-east-1}
    Name = "code-snippets-timestream-0-us-east-1"
  }
}
*/
