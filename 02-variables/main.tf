variable "URL" {
    default = "example.com"
}

## Access variable
output "URL" {
    value = var.URL
}

# variable is combination of some other string. then we have to use ${}
output "URL" {
    value = "URL -${var.URL}"
}