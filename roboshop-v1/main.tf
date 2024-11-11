resource  "aws_instance" "frontend" {
  ami            = "ami-09c813fb71547fc4f"
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags {
    Name = "frontend"
  }
}