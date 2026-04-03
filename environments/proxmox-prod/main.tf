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

module "proxmox_db" {
  source         = "../../modules/proxmox"
  vmid           = 8888
  template_id    = 9999
  vm_name        = "db-server"
  vm_ip          = "172.199.10.180/24"
  gateway        = "172.199.10.1"
  memory         = 4096
  disk_size      = "30G"
  cores          = 2
  ssh_public_key = var.ssh_public_key
}
