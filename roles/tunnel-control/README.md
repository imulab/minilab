tunnel-control
=========

Places control scripts on the tunnel VM to open tunnels to ingress VM.

Role Variables
--------------

| Name | Usage |
| --- | --- |
| `tunnel.name` | Name of the tunnel |
| `tunnel.source` | Source address on the ingress VM |
| `tunnel.destination` | LAN address for the service |
| `tunnel.ssh_address` | IP address for the ingress VM |
| `tunnel.ssh_user` | SSH user to connect to ingress VM. Default `root` |
