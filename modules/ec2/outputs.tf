output "instance_id" {
  value = aws_instance.my_strapi_instance.id
}

output "public_ip" {
  value = aws_instance.my_strapi_instance.public_ip
}
