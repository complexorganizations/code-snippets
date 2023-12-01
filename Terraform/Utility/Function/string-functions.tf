// Remove the trailing slash from a string
output "remove_trailing_slash" {
  value = chomp("Hello, World!\n")
}

// Check if a given string ends with a given substring.
output "ends_with" {
  value = endswith("Hello, World!", "World!")
}

// Format a string.
output "format_string" {
  value = format("Hello, %s!", "World")
}

// Format a list of strings.
output "format_list" {
  value = formatlist("Hello, %s!", ["World", "Terraform"])
}

// Lower a string.
output "lower_string" {
  value = lower("Hello, World!")
}

// uppper a string.
output "upper_string" {
  value = upper("Hello, World!")
}

// replace a string.
output "replace_string" {
  value = replace("Hello, World!", "World", "Terraform")
}


// Use the split function to split a string into a list of strings
output "split_a_string" {
  value = split(",", "John,Paul,George,Ringo")
}

// Check if a given string starts with a substring.
output "starts_with" {
  value = startswith("Hello, World!", "Hello")
}

// Title a string.
output "title_string" {
  value = title("hello, world!")
}

// Trim a string.
output "trim_string" {
  value = trim("Hello, World!", "!")
}

// Trim a string prefix.
output "trim_prefix_string" {
  value = trimprefix("Hello, World!", "Hello, ")
}

// Trim a string suffix.
output "trim_suffix_string" {
  value = trimsuffix("Hello, World!", ", World!")
}

// Trim a string space.
output "trim_space_string" {
  value = trimspace(" Hello, World! ")
}