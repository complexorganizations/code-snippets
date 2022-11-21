# Create a firestore instance
resource "google_firestore_instance" "firestore" {
  name     = "firestore-instance"
  location = "us-central1"
}