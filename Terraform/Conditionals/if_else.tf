# Create a generic variable
variable "generated_test_value" {
  type    = string
  default = ""
}

# Create a conditional statement
# If the value is "aws" then print "AWS"
# If the value is "gcp" then print "GCP"
# If the value is "azure" then print "Azure"
# If the value is anything else then print "Unknown"
output "test" {
  value = var.generated_test_value == "aws" ? "AWS" : var.generated_test_value == "gcp" ? "GCP" : var.generated_test_value == "azure" ? "Azure" : "Unknown"
}
