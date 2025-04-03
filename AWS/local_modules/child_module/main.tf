resource "aws_instance" "module_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.name
  }
  #lifecycle {
   # prevent_destroy = true
  #}
}
