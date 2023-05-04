# This code defines a local variable named hello_world that contains the string "Hello, World!".
# The output variable named hello_world is assigned the value of the local variable hello_world.
// Hello, World! in main.tf
locals {
  hello_world = "Hello, World!"
}

output "hello_world" {
  value = local.hello_world
}
