output "instance_id" {
  value = aws_instance.my_hospital_instance.id
}

output "public_ip" {
  value = aws_instance.my_hospital_instance.public_ip
}

output "ec2_domain_name" {
  value = aws_instance.my_hospital_instance.public_dns
}