resource "aws_instance" "terraform" {
  ami           = var.ami
 # instance_type = var.name[count.index]=="prod"? "m4.large" : var.instance_type[count.index]
  instance_type = var.instance_type[count.index]
  key_name      = var.key_name
  count =3

  tags = {
    Name = var.name[count.index]
  }
}
