resource "tls_private_key" "generate_ecdsa_key_pair" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P521"
  rsa_bits    = 4096
}

# Save the ECDSA private key in file
resource "local_sensitive_file" "save_ecdsa_private_key" {
  content              = tls_private_key.generate_rsa4096_key_pair.private_key_openssh
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "private_key_ecdsa"
}

# Save the ECDSA public key in file
resource "local_sensitive_file" "save_ecdsa_public_key" {
  content              = tls_private_key.generate_rsa4096_key_pair.public_key_openssh
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "public_key_ecdsa"
}
