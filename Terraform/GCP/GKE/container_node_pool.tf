// Create a google container node pool
resource "google_container_node_pool" "node_pool" {
  name       = "node-pool"
  location   = "us-central1"
  cluster    = google_container_cluster.cluster.name
  node_count = 1
  node_config {
    preemptible  = false
    machine_type = "n1-standard-1"
  }
}
