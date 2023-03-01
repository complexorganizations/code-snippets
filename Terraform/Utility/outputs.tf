variable "random_data" {
  type    = list(string)
  default = ["John", "Jane", "Joe"]
}

output "random_data" {
  value       = var.random_data
  description = "The names of the people."
  sensitive   = true
  precondition {
    condition     = length(var.random_data) > 0
    error_message = "No names were provided."
  }
  depends_on = [var.random_data]
}
