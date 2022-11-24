resource "google_composer_environment" "test" {
  name   = "test"
  region = "us-central1"
  config {
    software_config {
      image_version = "composer-2-airflow-2"
    }
    node_config {
      service_account = "example-account@example-project.iam.gserviceaccount.com"
    }
  }
}
