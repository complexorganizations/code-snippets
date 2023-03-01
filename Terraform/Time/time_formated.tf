// Format the output of the time.
output "time_formated" {
  value = formatdate("YYYY-MM-DD-HH:mm:ss", timestamp())
}
