terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "= 3.0.1-rc10"
    }
  }
}

resource "proxmox_vm_qemu" "db_server" {
  name        = var.vm_name
  target_node = "pve"
  vmid        = var.vmid
  clone       = var.template_id
  os_type     = "cloud-init"
  cores       = var.cores
  sockets     = 1
  memory      = var.memory
  agent       = 1
  scsihw      = "virtio-scsi-single"

  disk {
    slot     = 0
    type     = "scsi"
    storage  = "local-lvm"
    size     = var.disk_size
    iothread = 1
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  ipconfig0  = "ip=${var.vm_ip},gw=${var.gateway}"
  ciuser     = "ubuntu"
  sshkeys    = var.ssh_public_key
  nameserver = "8.8.8.8"

  lifecycle {
    ignore_changes = [network, disk]
  }
}
