variable "aws_region" {
  description = "AWS Region to deploy resources"
  type        = string
  default     = "ca-central-1"
}

variable "instance_type" {
  description = "EC2 instance type for Bastion Host"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Key pair for SSH access"
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet ID for the Bastion Host"
  type        = string
}

