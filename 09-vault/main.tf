provider "vault" {
  address = "https://172.31.7.95:8200"
  token   = var.vault_token
  skip_tls_verify = true
}


variable "vault_token" {}

data "vault_generic_secret" "example" {
  path = "test/my_credentials"
}

# data "vault_kv_secret_v2" "example" {
#   name  = "my_credentials"
#   mount = "test"    
#}

resource "local_file" "foo" {
  content  = data.vault_generic_secret.example.data["password"]
  filename = "/tmp/secret"
} 

