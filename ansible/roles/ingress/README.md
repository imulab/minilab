ingress
=========

Sets up nginx reverse proxy and let's encrypt auto tls on the ingress node.

Role Variables
--------------

| Name | Note |
| --- | --- |
| `ingress.tls.email` | Let's encrypt registration email |
| `ingress.minio.enabled` | When `true|yes`, installs minio reverse proxy |
| `ingress.minio.host` | Hostname for minio service |
| `ingress.minio.tunnel_port` | Local SSH tunnel port to proxy minio traffic to |
