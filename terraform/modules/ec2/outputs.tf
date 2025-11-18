output "instance_public_ips" {
  description = "Public IP addresses of the created EC2 instances"
  value       = [for i in aws_instance.this : i.public_ip]
}

output "instance_public_dns" {
  description = "Public DNS names of the created EC2 instances"
  value       = [for i in aws_instance.this : i.public_dns]
}

output "instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = [for i in aws_instance.this : i.id]
}
