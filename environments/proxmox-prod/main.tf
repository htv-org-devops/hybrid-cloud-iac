module "proxmox_db" {
  source = "../../modules/proxmox"

  pm_api_url     = var.pm_api_url
  pm_user        = var.pm_user
  pm_password    = var.pm_password
  vm_name        = "db-server"
  vmid           = 200
  template_id    = 8888
  target_node    = "pve"
  vm_ip          = "172.199.10.180"
  gateway        = "172.199.10.1"
  cores          = 2
  memory         = 4096
  disk_size      = "20G"
  ssh_public_key = var.ssh_public_key
}
