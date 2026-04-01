variable "vmid"          { type = number; default = 8888 }
variable "template_id"   { type = number; default = 9999 }
variable "vm_name"       { type = string; default = "db-server" }
variable "vm_ip"         { type = string; default = "172.199.10.180/24" }
variable "gateway"       { type = string; default = "172.199.10.1" }
variable "memory"        { type = number; default = 4096 }
variable "disk_size"     { type = string; default = "30G" }
variable "cores"         { type = number; default = 2 }
variable "ssh_public_key"{ type = string }
