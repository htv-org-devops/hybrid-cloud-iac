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
      version = "~> 3.0"
    }
  }
}

# Provider config lấy từ env vars: PM_API_URL, PM_USER, PM_PASS
provider "proxmox" {
  pm_tls_insecure = true
}
