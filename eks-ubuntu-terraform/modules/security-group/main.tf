resource "aws_security_group" "bastion_sg" {
  name        = "bastion-security-group"
  description = "Security group for the Bastion Host"
  vpc_id      = var.vpc_id

  # Allow inbound SSH access (change CIDR for more security)
  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Change this to your IP for security
  }

  # Allow outbound traffic to any destination
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastion-security-group"
  }
}

