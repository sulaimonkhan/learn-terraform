resource  "aws_instance" "frontend" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "frontend-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}




resource  "aws_instance" "mongod" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "mongod"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "mongodb-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}



resource  "aws_instance" "catalogue" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "catalogue-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}


resource  "aws_instance" "redis" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "redis-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}





resource  "aws_instance" "user" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "user-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}



resource  "aws_instance" "cart" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "cart-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}


resource  "aws_instance" "mysql" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "mysql-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}



resource  "aws_instance" "shipping" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "shipping-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}



resource  "aws_instance" "rabbitmq" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "rabbitmq-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}


resource  "aws_instance" "payment" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0069852OQ5LT6MOSANJ"
  name    = "payment-dev.sulaimondevopsb72.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}

