# ec2-nginx-setup
Provisions an AWS ec2 instance with SSH access and installs nginx

## Requirements
- Terraform
- AWS credentials configured
- Existing ec2 key pair

##Usage
```bash
terraform init
terraform validate
terrform plan
terraform apply -var="key_name=your-key-pair-name" -auto-approve
