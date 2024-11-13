variable "instances" {
  default = [
    "frontend",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "mysql",
    "mongodb",
    "rabbitmq",
    "redis"
  ]    
}

resource  "aws_instance" "instances" {
  count = length(var.instances)  
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = var.instances[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)  
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "${var.instances[count.index]}-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}