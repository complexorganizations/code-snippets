resource "google_project_iam_binding" "name" {
  role = "roles/editor"
  project = "github-code-snippets"
  members = [
    "user:jane@example.com",
  ]
}
