resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = var.component_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "${var.component_name}-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name" {}