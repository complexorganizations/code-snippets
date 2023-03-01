// Create a dataproc cluster
resource "google_dataproc_cluster" "cluster" {
  name   = "dataproc-cluster"
  region = "us-central1"
  cluster_config {
    master_config {
      num_instances = 1
      machine_type  = "n1-standard-1"
    }
    worker_config {
      num_instances = 2
      machine_type  = "n1-standard-1"
    }
  }
}
