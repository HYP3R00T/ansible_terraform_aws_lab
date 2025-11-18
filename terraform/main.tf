# Use the ec2 module to create instances, security group and keypair
module "ec2" {
  source = "./modules/ec2"

  aws_region      = var.aws_region
  instance_type   = var.instance_type
  key_name        = var.key_name
  public_key_path = var.public_key_path
  instance_count  = var.instance_count
}
