# Generate a RSA 4096 key
resource "tls_private_key" "generate_rsa4096_key_pair" {
  algorithm   = "RSA"
  ecdsa_curve = "P521"
  rsa_bits    = 4096
}

// Save the rsa4096 private key in file
resource "local_sensitive_file" "save_rsa4096_private_key" {
  content              = tls_private_key.generate_rsa4096_key_pair.private_key_openssh
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "private_key_rsa4096"
}

// Save the rsa4096 public key in file
resource "local_sensitive_file" "save_rsa4096_public_key" {
  content              = tls_private_key.generate_rsa4096_key_pair.public_key_openssh
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "public_key_rsa4096"
}
