data "aws_ami" "my_ubuntu_ami" {
  most_recent = true
  owners = [ "099720109477" ]

  filter {
    name = "name"
    values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*" ]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
}

resource "aws_instance" "my_strapi_instance" {
  ami = data.aws_ami.my_ubuntu_ami.id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [ var.security_group]

  tags = {
    Name = "ec2_strapi"
  }
}
