// Get the absolute path of a given path.
output "abs_path" {
  value = abspath(path.root)
}

// Get the directory of a given path.
output "dir_path" {
  value = dirname(path.root)
}

// Get the base name of a given path.
output "base_path" {
  value = basename(path.root)
}

// Check if a given file exists.
output "file_exists" {
  value = fileexists("path-functions.tf")
}