// Generate a random password
resource "random_password" "generate_random_password" {
  length      = 16
  lower       = true
  min_lower   = 0
  min_numeric = 0
  min_special = 0
  min_upper   = 0
  numeric     = true
  special     = true
  upper       = true
}

output "random_password_output" {
  value     = random_password.generate_random_password.result
  sensitive = true
}
