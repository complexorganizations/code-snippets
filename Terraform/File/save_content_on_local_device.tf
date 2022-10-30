# Save content on the local device
resource "local_sensitive_file" "save_content_on_local_device" {
    content  = "Example content to write on the file."
    filename = "example_file_name"
}
