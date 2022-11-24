# Create a google cloud SQL instance
resource "google_sql_database_instance" "main" {
  name                = "main-instance"
  deletion_protection = false
  database_version    = "POSTGRES_14"
  region              = "us-central1"
  lifecycle {
    prevent_destroy = false
  }
  settings {
    activation_policy     = "ALWAYS"
    availability_type     = "ZONAL"
    tier                  = "db-f1-micro"
    disk_autoresize       = true
    disk_autoresize_limit = 0
    disk_size             = 10
    disk_type             = "PD_SSD"
    pricing_plan          = "PER_USE"
    backup_configuration {
      binary_log_enabled             = false
      enabled                        = true
      point_in_time_recovery_enabled = true
      start_time                     = "00:00"
      transaction_log_retention_days = 7
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }
    }
    ip_configuration {
      ipv4_enabled = true
      require_ssl  = true
    }
    location_preference {
      zone = "us-central1-c"
    }
    database_flags {
      name  = "log_temp_files"
      value = "0"
    }
    database_flags {
      name  = "log_checkpoints"
      value = "on"
    }
    database_flags {
      name  = "log_connections"
      value = "on"
    }
    database_flags {
      name  = "log_disconnections"
      value = "on"
    }
    database_flags {
      name  = "log_lock_waits"
      value = "on"
    }
  }
}
