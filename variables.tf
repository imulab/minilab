# =====================================
# Proxmox Virtual Environment variables
# =====================================
variable "pve_host" {
  description = "Host IP address for the PVE server"
  type        = string
}

variable "pve_port" {
  description = "Listening port for the PVE server"
  type        = number
  default     = 8006
}

variable "pve_user" {
  description = "Username that configures PVE server"
  type        = string
  default     = "root@pam"
}

variable "pve_password" {
  description = "Password for the username that configures PVE server"
  type        = string
}

variable "pve_target_node" {
  description = "PVE node name"
  type        = string
}

# ========================
# Common Network variables
# ========================
variable "pve_network_name" {
  description = "Name of the network assigned to hosts"
  type        = string
  default     = "eth0"
}

variable "pve_network_bridge" {
  description = "Name of the network bridge"
  type        = string
  default     = "vmbr0"
}

variable "pve_network_gateway" {
  description = "IP address of the LAN gateway"
  type        = string
}

variable "pve_network_firewall" {
  description = "Whether to enable network firewall"
  type        = bool
  default     = true
}

variable "pve_dns_servers" {
  description = "Address of the DNS servers"
  type        = string
  default     = "114.114.114.114"
}

# ========================
# Common Storage variables
# ========================
variable "pve_template_storage" {
  description = "Storage device for QCOW2 OS templates"
  type        = string
  default     = "local"
}

variable "pve_data_storage" {
  description = "Storage device for VM disks"
  type        = string
  default     = "local-lvm"
}

variable "pve_ubuntu_template_name" {
  description = "Template file name for Ubuntu OS"
  type        = string
  default     = "ubuntu-18.04-standard_18.04.1-1_amd64.tar.gz"
}

# =======================
# Common access variables
# =======================
variable "ssh_public_key_file" {
  description = "Path to the SSH public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key_file" {
  description = "Path to the SSH privatekey file"
  type        = string
  default     = "~/.ssh/id_rsa"
}

# =======================
# Tunnel LXC VM variables
# =======================
variable "tunnel_vm_ip" {
  description = "IP address for the tunnel VM"
  type        = string
}

variable "tunnel_vm_hwaddr" {
  description = "Mac address for the tunnel VM"
  type        = string
}

# ======================
# Minio LXC VM variables
# ======================
variable "minio_vm_ip" {
  description = "IP address for the minio VM"
  type        = string
}

variable "minio_vm_hwaddr" {
  description = "Mac address for the minio VM"
  type        = string
}