# Generate a random integer
resource "random_integer" "generate_random_integer" {
  min = 0
  max = 10000
}

output "random" {
  value = random_integer.generate_random_integer.result
}
