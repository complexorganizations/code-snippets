# Create a redis instance
resource "google_redis_instance" "cache" {
  name                    = "memory-cache"
  tier                    = "STANDARD_HA"
  location_id             = "us-central1-a"
  alternative_location_id = "us-central1-b"
  redis_version           = "REDIS_4_0"
  display_name            = "Terraform Test Instance"
  memory_size_gb          = 10
  maintenance_policy {
    weekly_maintenance_window {
      day = "TUESDAY"
      start_time {
        hours   = 0
        minutes = 30
        seconds = 0
        nanos   = 0
      }
    }
  }
}
