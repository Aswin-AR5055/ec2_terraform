resource "aws_key_pair" "hospital_key" {
  key_name = "hospital_key"
  public_key = file("${path.module}/hospital-key.pub")
}