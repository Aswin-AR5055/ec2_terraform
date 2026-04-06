output "cloudfront_domain_name" {
  description = "The domain name of the cloudfront distribution"
  value = aws_cloudfront_distribution.ec2_distribution.domain_name
}