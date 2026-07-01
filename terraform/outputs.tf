output "vpc_id" {
  description = "ID of the created VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet."
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the web security group."
  value       = aws_security_group.web.id
}

output "ec2_instance_id" {
  description = "ID of the EC2 web server."
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 web server."
  value       = aws_instance.web.public_ip
}

output "website_url" {
  description = "URL for accessing the Nginx website."
  value       = "http://${aws_instance.web.public_ip}"
}