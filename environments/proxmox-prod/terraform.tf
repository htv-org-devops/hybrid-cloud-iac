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
      version = "3.0.0-rc1"  # Latest RC stable
    }
  }
}
