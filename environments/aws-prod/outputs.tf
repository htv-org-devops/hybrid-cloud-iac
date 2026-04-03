output "alb_dns_name" {
  value = module.aws_infra.alb_dns_name
}

output "web_instance_ips" {
  value = module.aws_infra.web_instance_ips
}

output "web_instance_private_ips" {
  value = module.aws_infra.web_instance_private_ips
}

output "vpc_id" {
  value = module.aws_infra.vpc_id
}
