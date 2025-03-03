resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-074872c263ca83ca5"]
  tags = {
    Name = "test-${var.env}"
  }
}


variable "env" {}

