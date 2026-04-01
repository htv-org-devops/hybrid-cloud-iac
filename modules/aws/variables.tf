variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public subnet CIDRs"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  description = "Availability zones"
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 24.04 (leave empty to use data source)"
  type        = string
  default     = ""
  # Lấy từ Phase 6.4 hoặc dùng data source bên dưới
}

variable "key_name" {
  description = "EC2 Key Pair name"
  default     = "hybrid-cloud-key"
}

variable "environment" {
  description = "Environment name"
  default     = "production"
}
