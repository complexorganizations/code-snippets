resource "google_project_iam_binding" "name" {
  role    = "roles/editor"
  project = "github-code-snippets"
  members = ["serviceAccount:${google_service_account.example.email}",]
}

# please create an appropriate service account for the resource
resource "google_service_account" "example" {
  account_id   = "<set as you like>"
  display_name = "<set as you like>"
}

