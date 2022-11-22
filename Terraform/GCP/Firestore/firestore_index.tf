#
resource "google_firestore_index" "index" {
  name    = "firestore-index"
  fields {
    field_path = "name"
    order      = "ASCENDING"
  }
  fields {
    field_path = "age"
    order      = "DESCENDING"
  }
  collection_id = "users"
}
