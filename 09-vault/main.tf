provider "vault" {
   address = "https://   
   token   = var.vault_token
   skip_tls_verify = true
}


variable "vault_token" {}

data "vault_kv_secret_v2" "example" {
   name  = "my_credentials"
   mount = "test"    
}

resource "local_file" "foo" {
   content  = data.vault_kv_secret_v2.example
   filename = "/tmp/secret"   
}