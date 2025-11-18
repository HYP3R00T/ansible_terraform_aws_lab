variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name for the AWS key pair"
  type        = string
}

variable "public_key_path" {
  description = "Absolute path to public key file"
  type        = string
}

variable "ami" {
  description = "AMI of Linux distro"
  type        = string
  default     = "ami-0ecb62995f68bb549"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 2
}
