# Deploy test Wed Apr  1 09:44:24 AM UTC 2026
module "aws_infra" {
  source = "../../modules/aws"

  # ami_id không cần truyền — modules/aws/main.tf dùng data source Ubuntu 24.04 tự động
  key_name      = "hybrid-cloud-key"
  instance_type = "t3.micro"
  environment   = "production"
}
# Initial deployment test
# Initial deployment test
