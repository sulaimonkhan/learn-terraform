terraform {
  backend "s3" {
    bucket = "terraform-d86"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "null_resource" "test" {}