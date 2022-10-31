# Generate a random uuid
resource "random_uuid" "generate_random_uuid" {}

output "random_uuid" {
  value = random_uuid.generate_random_uuid.result
}
