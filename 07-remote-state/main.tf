terraform {
  backend "s3" {
    bucket = "terraform-d88"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "null_resource" "test" {}