variable "ami_id" {
  description = "AMI ID for the ec2 instance"
  default     = "ami-000ec6c25978d5999" # Amazon Linux 2 in us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "ec2 key pair name"
  type        = string
}
