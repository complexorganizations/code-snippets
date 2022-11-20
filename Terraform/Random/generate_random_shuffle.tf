# Generate a random item from a given list.
resource "random_shuffle" "generate_random_shuffle" {
  input        = ["one", "two", "three", "four", "five"]
  result_count = 1
}

output "random_shuffle_output" {
  value = random_shuffle.generate_random_shuffle.result[0]
}
