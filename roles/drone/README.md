Drone
=========

Installs Drone as a docker-compose service

Role Variables
--------------

| Name | Usage |
| --- | --- |
| `drone_config.version` | Image version |
| `drone_config.rpc_secret` | RPC server for server-agent communication |
| `drone_config.github_client_id` | Drone Github OAuth app client id |
| `drone_config.github_client_secret` | Drone Github OAuth app client secret |
| `drone_config.host` | Drone public host name |
| `drone_config.protocl` | Drone internal http protocol |
| `drone_config.user_create` | Create user on startup |
| `drone_config.user_filter` | Limit user registration |
