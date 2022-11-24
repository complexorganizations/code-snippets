resource "google_project_iam_binding" "name" {
  role = "roles/editor"
  members = [
    "user:jane@example.com",
  ]
}
