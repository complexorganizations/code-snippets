resource "random_string" "generate_random_string" {
    length           = 16
    lower            = true
    min_lower        = 0
    min_numeric      = 0
    min_special      = 0
    min_upper        = 0
    numeric          = true
    override_special = ""
    special          = true
    upper            = true
}

output "random_string_output" {
    value = random_string.generate_random_string.result
}
