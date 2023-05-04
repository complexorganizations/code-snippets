// Check if a list cointains a value
output "list_contains" {
  value = contains(["a", "b", "c"], "a")
}
