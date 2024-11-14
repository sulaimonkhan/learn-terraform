resource  "aws_instance" "test" {
  ami            = data.aws_ami.ami.id
  instance_type  = "t3.small"
  vpc_security_group_ids = ["sg-074f03a20cc158368"]
  tags = {
    Name = "test"
  }
}


data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}