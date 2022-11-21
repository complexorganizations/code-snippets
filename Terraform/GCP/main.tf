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

resource "google_compute_network" "vpc_network" {
  name                            = "terraform-network"
  auto_create_subnetworks         = true
  delete_default_routes_on_create = false
  enable_ula_internal_ipv6        = true
  mtu                             = 0
  routing_mode                    = "REGIONAL"
}

resource "google_compute_instance" "vm_instance" {
  name                = "terraform-instance"
  machine_type        = "f1-micro"
  zone                = "us-central1-c"
  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}

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
