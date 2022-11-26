# Create a google cointainer cluster
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
  master_authorized_networks_config = [{
    cidr_blocks = [{
    cidr_block = "<write as you like (e.g. 10.10.128.0/24)>"
    display_name = "<write as you like (e.g. internal)>"
    }]
  }]
}
