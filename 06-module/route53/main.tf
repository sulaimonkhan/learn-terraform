resource "aws_route53_record" "record" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "${var.instance_name}-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}