terraform {
  required_providers {
    proxmox = {
      source  = "github.com/telmate/proxmox"
      version = "~> 1.0.0"
    }
  }
}

provider "proxmox" {
  pm_tls_insecure = true
  pm_api_url      = "https://${var.pve_host}:${var.pve_port}/api2/json"
  pm_user         = var.pve_user
  pm_password     = var.pve_password
}

# =============
# Tunnel LXC VM
# =============
resource "proxmox_lxc" "tunnel" {
  vmid     = 100
  hostname = "tunnel"
  cores    = 2
  memory   = 2048
  swap     = 512
  network {
    name     = var.pve_network_name
    bridge   = var.pve_network_bridge
    firewall = var.pve_network_firewall
    gw       = var.pve_network_gateway
    ip       = "${var.tunnel_vm_ip}/24"
    hwaddr   = var.tunnel_vm_hwaddr
  }
  nameserver      = var.pve_dns_servers
  ostemplate      = "${var.pve_template_storage}:vztmpl/${var.pve_ubuntu_template_name}"
  ssh_public_keys = file(var.ssh_public_key_file)
  storage         = var.pve_data_storage
  rootfs          = "${var.pve_data_storage}:16"
  target_node     = var.pve_target_node
  unprivileged    = true
  onboot          = true
  start           = true

  provisioner "remote-exec" {
    inline = [
      "apt-get update",
      "apt-get install -y python3"
    ]
    connection {
      type        = "ssh"
      host        = var.tunnel_vm_ip
      user        = "root"
      private_key = file(var.ssh_private_key_file)
    }
  }
}

# ============
# Minio LXC VM
# ============
resource "proxmox_lxc" "minio" {
  vmid     = 101
  hostname = "minio"
  cores    = 2
  memory   = 4096
  swap     = 512
  network {
    name     = var.pve_network_name
    bridge   = var.pve_network_bridge
    firewall = var.pve_network_firewall
    gw       = var.pve_network_gateway
    ip       = "${var.minio_vm_ip}/24"
    hwaddr   = var.minio_vm_hwaddr
  }
  nameserver      = var.pve_dns_servers
  ostemplate      = "${var.pve_template_storage}:vztmpl/${var.pve_ubuntu_template_name}"
  ssh_public_keys = file(var.ssh_public_key_file)
  storage         = var.pve_data_storage
  rootfs          = "${var.pve_data_storage}:256"
  target_node     = var.pve_target_node
  unprivileged    = true
  onboot          = true
  start           = true

  provisioner "remote-exec" {
    inline = [
      "apt-get update",
      "apt-get install -y python3"
    ]
    connection {
      type        = "ssh"
      host        = var.minio_vm_ip
      user        = "root"
      private_key = file(var.ssh_private_key_file)
    }
  }
}
