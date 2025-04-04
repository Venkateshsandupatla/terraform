

variable "vpc_id" {
  default = "vpc-0d06ff80b1b5df0d6"
}

variable "cidr_ipv4" {
  default = "0.0.0.0/0"
}

variable "ssh_port" {
  default = 22
}

variable "HTTP_port" {
  default = 80
}
variable "HTTPS_port" {
  default = 443
}

variable "Jenkins_port" {
  default = 8080
}