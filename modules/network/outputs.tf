output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main_vpc.id
}

output "subnet_ids" {
  description = "List of public subnet IDs"
  value       = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id
  ]
}

output "security_group_id" {
  description = "ID of the ECS security group"
  value       = aws_security_group.ecs_sg.id
}
