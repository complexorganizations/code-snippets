# Create a firestore instance
resource "google_firestore_document" "firestore" {
  name     = "firestore-instance"
  location = "us-central1"
}