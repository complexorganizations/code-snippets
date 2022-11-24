resource "google_composer_environment" "test" {
    name = "test"
    region = "us-central1"
    config {
        node_count = 3
        node_config {
            zone = "us-central1-a"
            machine_type = "n1-standard-1"
            network = "default"
            subnetwork = "default"
        }
        software_config {
            image_version = "composer-2-airflow-2"
        }
    }
}