// Generate a sha1 hash of a string
output "generate_sha1" {
  value = sha1("Hello, World!")
}