# Generate a random pet
resource "random_pet" "generate_random_pet" {}

output "random_pet_output" {
    value = random_pet.generate_random_pet.id
}
