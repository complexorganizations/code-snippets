// Create the google cloud bigtable instance
resource "google_bigtable_instance" "bigtable" {
  name = "bigtable-instance"
  cluster {
    cluster_id   = "bigtable-cluster"
    zone         = "us-central1-a"
    num_nodes    = 1
    storage_type = "HDD"
  }
}
