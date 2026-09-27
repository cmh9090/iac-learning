output "private_ip" {
  value = aws_instance.app.private_ip
}

output "instance_id" {
  value = aws_instance.app.id
}