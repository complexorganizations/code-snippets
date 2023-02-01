// Create a pub/sub topic
resource "google_pubsub_topic" "topic" {
  name                       = "code-snippets-topic-gcp"
  message_retention_duration = "86600s"
}
