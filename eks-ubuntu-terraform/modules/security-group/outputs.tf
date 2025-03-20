output "security_group_id" {
 description = "The ID of the created security group"
  value       = aws_security_group.bastion_sg.id
}
output "vpc_id" {
  value = aws_security_group.bastion_sg.vpc_id
}


