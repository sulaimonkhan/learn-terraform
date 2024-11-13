variable "URL" {
    default = "example.com"
}

## Access variable
output "URL" {
    value = var.URL
}

# variable is combination of some other string. then we have to use ${}
output "URL1" {
    value = "URL - ${var.URL}"
}

# Data types

variable "num1" {
    default = 10
}

variable "bool1" {
    default = true
}

variable "str1" {
    default = "Hello"
}

# Numbers , Booleans $ strings

variable "list1" {
  default = [
    10,
    20,
    "xyz"
    false
  ]
}


# List can have combination of multiple data types also

variable "map1" {
    default = {
        aws = {
          trainer = "John"
          duration = 30    
        }
        devops = {
            trainer = "steve"
            duration = 20
        }
    }
}

output "list_1" {
    value = var.list1[2]
}

output "map1_aws_trainer" {
    value = var.map1["aws"]["trainer"]
}