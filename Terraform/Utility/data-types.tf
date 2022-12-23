// Create a data type for string
variable "string_data_type" {
  default = "The value of the var"
  type    = string
}

// Create an output for string data type
output "string_data_type" {
  value = var.string_data_type
}

// Create a data type for number
variable "number_data_type" {
  default = 10
  type    = number
}

// Create an output for number data type
output "number_data_type" {
  value = var.number_data_type
}

// Create a data type for bool
variable "bool_data_type" {
  default = true
  type    = bool
}

// Create an output for bool data type
output "bool_data_type" {
  value = var.bool_data_type
}

// Create a data type for list
variable "list_data_type" {
  default = ["one", "two", "three"]
  type    = list(any)
}

// Create a output for list data type
output "list_data_type" {
  value = var.list_data_type
}


// Create a data type for map
variable "map_data_type" {
  default = {
    "one"   = "one"
    "two"   = "two"
    "three" = "three"
  }
  type = map(any)
}

// Create a output for map data type
output "map_data_type" {
  value = var.map_data_type
}

// Create a data type for object
variable "object_data_type" {
  default = {
    "one"   = "one"
    "two"   = "two"
    "three" = "three"
  }
  type = object({
    one   = string
    two   = string
    three = string
  })
}

// Create a output for object data type
output "object_data_type" {
  value = var.object_data_type
}

// Create a data type for tuple
variable "tuple_data_type" {
  default = ["one", "two", "three"]
  type    = tuple([string, string, string])
}

// Create a output for tuple data type
output "tuple_data_type" {
  value = var.tuple_data_type
}

// Create a data type for set
variable "set_data_type" {
  default = ["one", "two", "three"]
  type    = set(string)
}

// Create a output for set data type
output "set_data_type" {
  value = var.set_data_type
}

// Create a data type for any
variable "any_data_type" {
  default = "The value of the var"
  type    = any
}

// Create a output for any data type
output "any_data_type" {
  value = var.any_data_type
}

// Create a data type for null
variable "null_data_type" {
  default = null
  type    = any
}

// Create a output for null data type
output "null_data_type" {
  value = var.null_data_type
}