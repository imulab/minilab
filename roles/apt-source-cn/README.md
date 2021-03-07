apt-source-cn
=========

Set Ubuntu apt source to Aliyun source in order to speed up `apt-get` operations in China.

Role Variables
--------------

| Name | Values | Note |
| --- | --- | --- |
| `release` | `[bionic|focal]` | Install apt source respective to the release name |

Example Playbook
----------------

```
- hosts: servers
  roles:
  - role: apt-source-cn
    release: bionic
```
