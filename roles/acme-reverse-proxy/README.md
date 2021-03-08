Role Name
=========

Sets up the host with the following software:
- `nginx`
- `certbot`
- `python-certbot-nginx`

Also configures a cronjob to automatically renew certificates.

This role follows this [instruction](https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/#:~:text=certbot%20can%20automatically%20configure%20NGINX%20for%20SSL%2FTLS.%20It,for.%20In%20our%20example%2C%20the%20domain%20is%20www.example.com.).