variable "instance_type" {
  description = "EC2 instance type for Bastion Host"
  type        = string
}

variable "key_name" {
  description = "Key pair for SSH access"
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet ID for the Bastion Host"
  type        = string
}

variable "security_group_id" {
  description = "Security Group for the Bastion Host"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile for the Bastion Host"
  type        = string
}

variable "ssh_private_key" {
  description = "Path to the SSH private key for remote provisioning"
  type        = string
}

