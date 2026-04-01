variable "vm_id" {
  description = "VM Clone ID (DB Server)"
  type        = number
  default     = 8888
}

variable "template_id" {
  description = "Template VM ID"
  type        = number
  default     = 9999
}

variable "vm_name" {
  description = "VM name"
  default     = "db-server"
}

variable "vm_ip" {
  description = "VM static IP with CIDR"
  default     = "172.199.10.180/24"
}

variable "gateway" {
  description = "Default gateway"
  default     = "172.199.10.1"
}

variable "memory" {
  description = "RAM in MB"
  type        = number
  default     = 4096
}

variable "disk_size" {
  description = "Disk size"
  default     = "30G"
}

variable "cores" {
  type    = number
  default = 2
}

variable "ssh_public_key" {
  description = "SSH public key for cloud-init"
  type        = string
}
