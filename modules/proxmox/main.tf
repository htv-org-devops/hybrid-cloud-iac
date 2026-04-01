terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 3.0"
    }
  }
}

resource "proxmox_vm_qemu" "db_server" {
  name        = var.vm_name
  target_node = "pve"   # Tên node Proxmox (xem trên Proxmox UI)
  vmid        = var.vm_id

  # Clone từ template
  clone   = "ubuntu2404-template"   # Tên template VM 9999
  os_type = "cloud-init"

  # Hardware
  cores   = var.cores
  memory  = var.memory
  scsihw  = "virtio-scsi-single"
  agent   = 1

  # Disk
  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = var.disk_size
        }
      }
    }
  }

  # Network
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  # Cloud-Init
  ipconfig0  = "ip=${var.vm_ip},gw=${var.gateway}"
  ciuser     = "ubuntu"
  sshkeys    = var.ssh_public_key
  nameserver = "8.8.8.8"

  # Đợi cloud-init hoàn tất
  lifecycle {
    ignore_changes = [network, disks]
  }
}
