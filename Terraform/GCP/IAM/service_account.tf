resource "google_service_account" "service_account" {
  account_id   = "service-account"
  display_name = "service-account"
  disabled     = false
  description  = "service-account"
  project      = "github-code-snippets"
}
