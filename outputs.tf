output "private_dns" {
  value       = aws_instance.instance.private_dns
  description = "Private DNS address of the instance."
}
