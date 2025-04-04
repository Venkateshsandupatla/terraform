resource "null_resource" "get_admin_password" {
  depends_on = [aws_instance.jenkins]

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"  
      host        = aws_instance.jenkins.public_ip
      private_key = file("C:/Users/venka/Downloads/webserver.pem")  
    }

    inline = [
      "echo 'Waiting for Jenkins to finish installing...'",
      "sleep 100",
      "echo 'Your Jenkins Admin Password:'",
      "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
    ]
  }
}
