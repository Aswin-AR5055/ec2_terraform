output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "key_name" {
  value = module.key_pair.key_name
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "cloudfront_domain_name" {
  value = module.cloudfront.cloudfront_domain_name
}
