provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "ssh_access" {
  name        = "ssh_access"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "nginx_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group-ids = [aws_security_group.ssh_access.id]
  key_name               = var.key_name

  user_data              = file("user_data.sh")

  tags = {
    Name = "nginx-instance"
  }
}
