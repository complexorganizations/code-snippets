# Create a filestore instance
resource "google_filestore_instance" "filestore" {
  name     = "filestore-instance"
  tier     = "STANDARD"
  location = "us-central1-c"
  file_shares {
    capacity_gb = 1024
    name        = "fileshare"
  }
  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}
