output "security_group_name" {
  value       = "${aws_security_group.example.name}"
  description = "The name of the security group"
}
