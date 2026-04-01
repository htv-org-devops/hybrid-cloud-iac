output "db_vm_ip" {
  description = "DB Server IP (no CIDR)"
  value       = split("/", var.vm_ip)[0]
  # "172.199.10.180/24" → "172.199.10.180"
}

output "db_vm_name" {
  value = proxmox_vm_qemu.db_server.name
}

output "db_vm_id" {
  value = proxmox_vm_qemu.db_server.vmid
}
