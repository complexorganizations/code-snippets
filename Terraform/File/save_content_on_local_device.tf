// Save content on the local device
resource "local_sensitive_file" "save_content_on_local_device" {
  content              = "Example content to write on the file."
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "example_file_name"
}
