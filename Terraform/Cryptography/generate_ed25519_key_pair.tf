# Generate ed25519 key pair
resource "tls_private_key" "generate_ed25519_key_pair" {
  algorithm   = "ED25519"
  ecdsa_curve = "P224"
  rsa_bits    = 2048
}

# Save the ed22519 private key in file
resource "local_sensitive_file" "save_ed25519_private_key" {
  content              = tls_private_key.generate_ed25519_key_pair.private_key_openssh
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "private_key"
}

# Save the ed22519 public key in file
resource "local_sensitive_file" "save_ed25519_public_key" {
  content              = tls_private_key.generate_ed25519_key_pair.public_key_openssh
  directory_permission = "0700"
  file_permission      = "0700"
  filename             = "public_key"
}
