output "iam_instance_profile" {
  description = "IAM Instance Profile for the Bastion Host"
  value       = aws_iam_instance_profile.bastion_profile.name
}

