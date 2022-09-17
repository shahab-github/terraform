output "public_ip" {
  value = aws_instance.instance.public_ip
}

output "instance_type" {
  value = aws_instance.instance.instance_type
}

output "AZ" {
  value = aws_instance.instance.availability_zone
}
