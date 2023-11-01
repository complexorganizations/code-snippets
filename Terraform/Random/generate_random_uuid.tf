// Generate a random uuid
resource "random_uuid" "generate_random_uuid" {}

output "generate_random_uuid_output" {
  value = random_uuid.generate_random_uuid.result
}
