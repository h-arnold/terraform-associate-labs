output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.arn
}

output "vpc_arn" {
  description = "ARN of the created VPC"
  value       = aws_vpc.main.arn
}

output "vpc_cidr" {
  description = "CIDR block of teh created VPC"
  value       = aws_vpc.main.cidr_block
}

output "route_table_id" {
  description = "ID of the main route table"
  value       = aws_route_table.main.id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.example.id
}