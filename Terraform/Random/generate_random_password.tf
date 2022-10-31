# Generate a random password
resource "random_password" "generate_random_password" {
  length = 16
}

output "random_password" {
  value = random_password.generate_random_password.result
  sensitive = true
}
