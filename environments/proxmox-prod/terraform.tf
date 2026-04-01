terraform {
  cloud {
    organization = "hybrid-cloud-doanthesis"
    workspaces {
      name = "ws-proxmox-prod"
    }
  }
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "= 3.0.1-rc10"
    }
  }
}

provider "proxmox" {
  pm_tls_insecure = true
}
