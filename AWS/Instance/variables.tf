variable "ami" {
  default = "ami-0efc43a4067fe9a3e"
}
variable "instance_type" {
  type = list
  default = ["t2.micro","t2.medium","t2.micro"]
  
}

variable "name" {
  type = list
  default = ["tf-dev","tf-stg","tf-prod"]
}

variable "key_name" {
  default = "webserver"
}

