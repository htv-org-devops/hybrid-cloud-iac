module "proxmox_db" {
  source = "../../modules/proxmox"

  vm_id          = 8888
  template_id    = 9999
  vm_name        = "db-server"
  vm_ip          = "172.199.10.180/24"
  gateway        = "172.199.10.1"
  memory         = 4096
  disk_size      = "30G"
  cores          = 2
  ssh_public_key = file("~/.ssh/server_key.pub")
  # Hoặc dùng variable: var.ssh_public_key
}
