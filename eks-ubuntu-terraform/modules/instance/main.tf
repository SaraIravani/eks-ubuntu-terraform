data "aws_ami" "latest_ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "bastion" {
  ami                  = "ami-055943271915205db"
  instance_type        = var.instance_type
  subnet_id            = var.public_subnet_id
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile = var.iam_instance_profile

  tags = {
    Name = "Bastion-Host"
  }
}

