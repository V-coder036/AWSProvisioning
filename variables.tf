variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"  # Replace with your desired region
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"  # Replace with your desired instance type
}

variable "ec2_key_pair_name" {
  description = "EC2 key pair name"
  default     = "newbbprod"  # Replace with your EC2 key pair name
}

variable "allowed_ssh_cidr_blocks" {
  description = "Allowed SSH CIDR blocks"
  default     = ["0.0.0.0/0"]  # Add any specific IP addresses or ranges as needed
}
