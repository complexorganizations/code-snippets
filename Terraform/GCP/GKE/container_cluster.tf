// Create a google cointainer cluster
resource "google_container_cluster" "cluster" {
  name                     = "cluster"
  location                 = "us-central1"
  initial_node_count       = 1
  remove_default_node_pool = true
  enable_shielded_nodes    = true
  resource_labels = {
    environment = "dev"
  }
  node_config {
    service_account = "service-account@google.com"
  }
}
