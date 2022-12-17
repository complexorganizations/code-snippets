terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 3.11.0"
    }
  }
}

provider "vault" {
  address = "http://127.0.0.1:8200"
  token   = "00000-00000-00000-00000-00000"
}

# Write data to vault
resource "vault_generic_secret" "write_secret" {
  path                = "secret/aws"
  delete_all_versions = true
  disable_read        = false
  data_json           = <<EOT
  {
    "test": "1234567890"
  }
EOT
}

# Get the secret from Vault
data "vault_generic_secret" "generic_secret" {
  depends_on            = [vault_generic_secret.write_secret]
  path                  = "secret/aws"
  with_lease_start_time = true
}

output "vault_stuff" {
  value     = data.vault_generic_secret.generic_secret.data["test"]
  sensitive = true
}
