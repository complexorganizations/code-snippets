resource "google_project_iam_binding" "name" {
  role    = "roles/editor"
  project = "github-code-snippets"
  members = ["serviceAccount:${google_service_account.service_account.email}",]
}

# Create a google cloud service account
resource "google_service_account" "service_account" {
  account_id   = "iam-binding-service-account-0"
  display_name = "iam-binding-service-account-0"
  disabled     = false
  description  = "The account used for iam binding to service account"
  project      = "github-code-snippets"
}
