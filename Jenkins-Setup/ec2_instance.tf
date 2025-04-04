
resource "aws_instance" "jenkins" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.Jenkins_SG.id]
  user_data = file("${path.module}/jenkins_setup.sh")
  tags = {
    Name = var.name
    
  }
}
