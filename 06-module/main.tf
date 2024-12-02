variable "instance" {
  default = [
    "test1",
    "test2"  
  ]    
}


module "ec2" {
  count = length(var.instances)
  source = "./ec2"
  instance_name = var.instance[count.index]
}


#module "route53" {
#  source = "./route53"    
#}