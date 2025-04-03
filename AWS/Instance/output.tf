output "instance_id" {

  value = [for i in aws_instance.terraform: i.id]
}

output "instance_public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = [for instance in aws_instance.terraform: instance.public_ip]
}