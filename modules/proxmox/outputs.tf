output "db_vm_ip"   { value = split("/", var.vm_ip)[0] }
output "db_vm_name" { value = proxmox_vm_qemu.db_server.name }
output "db_vm_id"   { value = proxmox_vm_qemu.db_server.vmid }
