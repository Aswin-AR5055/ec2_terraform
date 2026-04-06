terraform {
    backend "s3" {
      bucket = "hospital-terraform-bucket-5055"
      key = "hospital-ec2/terraform.tfstate"
      region = "ap-south-1"
      encrypt = true
    }
}