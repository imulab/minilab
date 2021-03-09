ingress-config
=========

Configures the ingress VM to reverse proxying for a service

Role Variables
--------------

| Name | Usage |
| --- | --- |
| `ingress_config.name` | Name of the config file |
| `ingress_config.server_name` | Domain name of the upstream server |
| `ingress_config.proxy_pass` | Address for the local port of the upstream server. SSH tunnel will connect to this local address. |
| `ingress_config.opt.global` | List of global nginx options in the server block |
| `ingress_config.opt.paths` | Map of path definitions to a list of path specific nginx options in the server block |
| `ingress_config.tls.enabled` | Whether to enable auto TLS |
| `ingress_config.tls.email` | Email to register for auto TLS |

