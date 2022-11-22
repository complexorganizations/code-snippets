# Create a google cloud storage bucket.
resource "google_storage_bucket" "bucket" {
  name                        = "code-snippets-bucket-gcp"
  location                    = "US"
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true
  default_event_based_hold    = false
  requester_pays              = false
  public_access_prevention    = "enforced"
}
