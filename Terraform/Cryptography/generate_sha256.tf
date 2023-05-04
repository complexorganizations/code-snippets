// Generate a sha256 hash of a string
output "generate_sha256" {
  value = sha256("Hello, World!")
}