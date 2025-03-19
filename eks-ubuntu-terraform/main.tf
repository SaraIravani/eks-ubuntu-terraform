module "security_group" {
  source = "./modules/security-group"

  vpc_id = "vpc-xxxxxxxx"  # Replace with your actual VPC ID
}

