terraform {
  cloud {
    organization = "4TMCxcoVC"
    workspaces {
      name = "ws-proxmox-prod"
    }
  }
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.16"  # Stable, không RC
    }
  }
}

data "proxmox_ct_template" "ubuntu" {
  storage_pool = "local"
  template_name = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
}

variable "ssh_public_key" {
  type = string
}

variable "vm_ip" {
  type = string
}

variable "gateway" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vmid" {
  type = number
}

variable "template_id" {
  type = string
}

variable "cores" {
  type = number
  default = 2
}

variable "memory" {
  type = number
  default = 4096
}

variable "disk_size" {
  type = string
  default = "20G"
}
