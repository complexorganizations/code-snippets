terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.43.1"
    }
  }
  required_version = ">= 1.0.0"
}

provider "google" {
  project = "github-code-snippets"
  region  = "us-central1"
  zone    = "us-central1-a"
}
