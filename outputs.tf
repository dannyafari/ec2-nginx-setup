output "instance_public_ip" {
  description = "Public IP of the ec2 instance"
  value       = aws_instance.nginx_server.public_ip
}
