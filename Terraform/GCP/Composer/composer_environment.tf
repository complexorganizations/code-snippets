resource "google_composer_environment" "test" {
  name   = "test"
  region = "us-central1"
  config {
    node_count = 3
    node_config {
      machine_type = "n1-standard-1"
    }
    software_config {
      image_version = "composer-2-airflow-2"
    }
  }
}
