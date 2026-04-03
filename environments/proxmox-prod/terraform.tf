terraform {
  cloud {
    organization = "hybird-cloud-doanthesis"  # Thay bằng org thật của bạn
    workspaces {
      name = "ws-proxmox-prod"
    }
  }
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc4"  # Latest RC stable
    }
  }
}
