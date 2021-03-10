pve_host = "192.168.88.10"
pve_password = "my_supper_secret_password"
pve_network_gateway = "192.168.88.1"
pve_target_node = "pve"

lxc = {
    "test1" = {
        id     = 100
        name   = "test1"
        cores  = 2
        memory = 2048
        swap   = 512
        disk   = 32
        ip     = "192.168.88.31"
        hwaddr = ""
    }
}

qemu = {
    "test2" = {
        id = 200
        name = "test2"
        clone = "bionic-template"
        cores  = 2
        memory = 4096
        disk = "32G"
        ip = "192.168.88.41"
    }
}