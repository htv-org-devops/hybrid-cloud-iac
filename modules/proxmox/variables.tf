variable "pm_api_url" {
  type = string
}

variable "pm_user" {
  type = string
}

variable "pm_password" {
  type      = string
  sensitive = true
}

variable "vm_name" {
  type = string
}

variable "vmid" {
  type = number
}

variable "template_id" {
  type = number
}

variable "target_node" {
  type    = string
  default = "pve"   # Tên node Proxmox mặc định
}

variable "vm_ip" {
  type = string
}

variable "gateway" {
  type = string
}

variable "cores" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 4096
}

variable "disk_size" {
  type    = string
  default = "20G"
}

variable "ssh_public_key" {
  type = string
}
