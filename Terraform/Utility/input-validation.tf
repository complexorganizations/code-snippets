variable "test" {
  type    = string
  default = "0123456789"
  validation {
    condition     = length(var.test) == 10
    error_message = "The test variable must be 10 characters long."
  }
}

output "test" {
  value = var.test
}
