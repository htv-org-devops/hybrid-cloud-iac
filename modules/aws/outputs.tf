output "alb_dns_name" {
  description = "ALB DNS name"
  value       = aws_lb.web.dns_name
}

output "web_instance_ips" {
  description = "EC2 public IPs"
  value       = aws_instance.web[*].public_ip
}

output "web_instance_private_ips" {
  description = "EC2 private IPs"
  value       = aws_instance.web[*].private_ip
}

output "vpc_id" {
  value = aws_vpc.main.id

