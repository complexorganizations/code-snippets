// Generate a random id
resource "random_id" "generate_random_id" {
  byte_length = 8
}

output "random_id_output" {
  value = random_id.generate_random_id.hex
}
