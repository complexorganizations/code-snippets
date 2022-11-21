terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.1"
    }
  }
}

provider "google" {
  project = "github-code-snippets"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# Create google cloud network
resource "google_compute_network" "vpc_network" {
  name                            = "terraform-network"
  auto_create_subnetworks         = true
  delete_default_routes_on_create = false
  mtu                             = 1420
  routing_mode                    = "REGIONAL"
}

# Create a Google cloud compute instance
resource "google_compute_instance" "vm_instance" {
  name                = "terraform-instance"
  machine_type        = "f1-micro"
  zone                = "us-central1-c"
  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"
    mode        = "READ_WRITE"
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
      type  = "pd-standard"
    }
  }
  network_interface {
    network     = "default"
    queue_count = 0
    access_config {
      network_tier = "PREMIUM"
    }
  }
  scheduling {
    automatic_restart   = true
    min_node_cpus       = 0
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = true
    enable_vtpm                 = true
  }
  metadata = {
    block-project-ssh-keys = true
  }
}

# Create google cloud firewall
resource "google_compute_firewall" "ssh" {
  name = "allow-ssh"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}

# Create a google cloud SQL instance
resource "google_sql_database_instance" "main" {
  name                = "main-instance"
  deletion_protection = false
  database_version    = "POSTGRES_14"
  region              = "us-central1"
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

# Create a google cloud storage bucket.
resource "google_storage_bucket" "bucket" {
  name          = "code-snippets-bucket-gcp"
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true
}

# Create a filestore instance
resource "google_filestore_instance" "filestore" {
  name     = "filestore-instance"
  tier     = "STANDARD"
  location = "us-central1-c"
  file_shares {
    capacity_gb = 1024
    name        = "fileshare"
  }
  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}

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

# Create a firestore instance
resource "google_firestore_instance" "firestore" {
  name     = "firestore-instance"
  location = "us-central1"
}

# Create the google cloud bigtable instance
resource "google_bigtable_instance" "bigtable" {
  name = "bigtable-instance"
  cluster {
    cluster_id   = "bigtable-cluster"
    zone         = "us-central1-c"
    num_nodes    = 1
    storage_type = "HDD"
  }
}

# Create a pub/sub topic
resource "google_pubsub_topic" "topic" {
  name                       = "topic"
  message_retention_duration = "86600s"
}

# Create a dataproc cluster
resource "google_dataproc_cluster" "cluster" {
  name   = "dataproc-cluster"
  region = "us-central1"
  cluster_config {
    gce_cluster_config {
      zone_uri = "us-central1-c"
    }
    master_config {
      num_instances = 1
      machine_type  = "n1-standard-1"
    }
    worker_config {
      num_instances = 2
      machine_type  = "n1-standard-1"
    }
  }
}

# Create a google cointainer cluster
resource "google_container_cluster" "cluster" {
  name                     = "cluster"
  location                 = "us-central1"
  initial_node_count       = 1
  remove_default_node_pool = true
}

# Create a google container node pool
resource "google_container_node_pool" "node_pool" {
  name       = "node-pool"
  location   = "us-central1"
  cluster    = google_container_cluster.cluster.name
  node_count = 1
  node_config {
    preemptible  = false
    machine_type = "n1-standard-1"
  }
}
