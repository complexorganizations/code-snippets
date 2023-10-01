//
resource "google_firestore_index" "index" {
  fields {
    field_path = "name"
    order      = "ASCENDING"
  }
  fields {
    field_path = "age"
    order      = "DESCENDING"
  }
  collection = google_firestore_document.firestore.collection
  depends_on = [
    google_firestore_document.firestore
  ]
}
