// Create a generic variable.
variable "test_value" {
  type    = string
  default = "123456789"
}

// Use a if statement to check the value of the variable.
output "if_statement" {
  value = var.test_value == "123456789" ? "The value is 123456789" : "The value is not 123456789"
}
