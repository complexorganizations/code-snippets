// Generate a random pet
resource "random_pet" "generate_random_pet" {
  length    = 2
  separator = "-"
}

output "random_pet_output" {
  value = random_pet.generate_random_pet.id
}
