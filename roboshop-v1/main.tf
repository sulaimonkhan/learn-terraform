resource  "aws_instance" "frontend" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "frontend"
  }
}


resource  "aws_instance" "mongod" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "mongod"
  }
}


resource  "aws_instance" "catalogue" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "catalogue"
  }
}


resource  "aws_instance" "redis" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "redis"
  }
}




resource  "aws_instance" "user" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "user"
  }
}




resource  "aws_instance" "cart" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "cart"
  }
}


resource  "aws_instance" "mysql" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "mysql"
  }
}



resource  "aws_instance" "shipping" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "shipping"
  }
}



resource  "aws_instance" "rabbitmq" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "rabbitmq"
  }
}


resource  "aws_instance" "payment" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "payment"
  }
}


