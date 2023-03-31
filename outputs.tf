output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = try(aws_subnet.private[0].id, "")
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = try(aws_subnet.public[0].id, "")
}
