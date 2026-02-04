module "key_pair" {
  source = "./modules/key_pair"
}

module "security_group" {
  source = "./modules/security_group"
  my_public_ip = var.my_public_ip
}

module "ec2" {
  source = "./modules/ec2"
  key_name = module.key_pair.key_name
  instance_type = var.instance_type
  security_group = module.security_group.security_group_id
}
