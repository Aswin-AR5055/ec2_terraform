variable "my_public_ip" {
  description = "my public ipv4 for ssh access"
  type        = string

  validation {
    condition     = can(regex("^\\d{1,3}(?:\\.\\d{1,3}){3}/32$", var.my_public_ip))
    error_message = "my_public_ip must be a /32 IPv4 CIDR like 203.0.113.10/32."
  }
}
