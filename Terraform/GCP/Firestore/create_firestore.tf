# Create a firestore instance
resource "google_firestore_document" "firestore" {
  collection  = "code-snippets-database-0"
  document_id = "code-snippets-document-"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}
