output "instance_public_ip" {
  value = aws_instance.learning.public_ip
}

output "instance_id" {
  value = aws_instance.learning.id
}