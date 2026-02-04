terraform {
    backend "s3" {
      bucket = "task3-bucket-terraform"
      key = "task3-ec2/terraform.tfstate"
      region = "ap-south-1"
      encrypt = true
    }
}