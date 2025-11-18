output "instance_public_ips" {
  description = "Public IP addresses of the EC2 instances"
  value       = module.ec2.instance_public_ips
}

output "instance_public_dns" {
  description = "Public DNS names of the EC2 instances"
  value       = module.ec2.instance_public_dns
}

output "instance_ids" {
  description = "Created EC2 instance ids"
  value       = module.ec2.instance_ids
}
