module "aws_infra" {
  source = "../../modules/aws"

  key_name      = "hybrid-cloud-key"
  instance_type = "t3.micro"
  environment   = "production"
}
