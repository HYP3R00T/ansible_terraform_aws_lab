# Create the keypair using your public key file
resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

# Security group: restrict SSH to your IP and optionally allow HTTP
resource "aws_security_group" "this" {
  name_prefix = "ansible-lab-sg-"
  description = "SSH (from control IP) and optional HTTP for demo"

  ingress {
    description = "SSH from control IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP open for demo"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ansible-lab-sg"
  }
}

# EC2 instances (count-based)
resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.this.id]

  tags = {
    Name = "ansible-web-${count.index + 1}"
    Role = "ansible-target"
  }
}
