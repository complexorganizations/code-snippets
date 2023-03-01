// Create a EMR serverless application.
resource "aws_emrserverless_application" "emrserverless_application" {
  name          = "emrserverless_application"
  release_label = "emr-6.6.0"
  type          = "hive"
  initial_capacity {
    initial_capacity_type = "HiveDriver"
    initial_capacity_config {
      worker_count = 1
      worker_configuration {
        cpu    = "2 vCPU"
        memory = "10 GB"
      }
    }
  }
  maximum_capacity {
    cpu    = "2 vCPU"
    memory = "10 GB"
  }
}
