variable "my_public_ip" {
  description = "My public ip to ssh into instance"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "region" {
  default = "ap-south-1"
  type    = string
}
