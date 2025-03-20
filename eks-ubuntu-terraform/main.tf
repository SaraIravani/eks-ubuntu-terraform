module "iam_role" {
  source = "./modules/iam-role"
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id = "vpc-0b74cf272a8603762"  # Replace with your actual VPC ID
}

module "bastion_instance" {
  source              = "./modules/instance"
  instance_type       = var.instance_type
  key_name           = var.key_name
  public_subnet_id   = var.public_subnet_id
  security_group_id  = module.security_group.security_group_id
  iam_instance_profile = module.iam_role.iam_instance_profile
  ssh_private_key    = "~/.ssh/id_rsa"
}
