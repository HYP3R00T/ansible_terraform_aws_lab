variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name for the AWS key pair to create"
  type        = string
  default     = "ansible-lab-key"
}

variable "public_key_path" {
  description = "Absolute path to your public SSH key (e.g. /home/ubuntu/.ssh/ansible_lab.pub)"
  type        = string
  default     = "~/.ssh/ansible_lab.pub"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 2
}
