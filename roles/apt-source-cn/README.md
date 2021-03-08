apt-source-cn
=========

Set Ubuntu apt source to Aliyun source in order to speed up `apt-get` operations in China.

Role Variables
--------------

| Name | Note |
| --- | --- |
| `apt.release` | `bionic|focal` |

Example Playbook
----------------

```
- hosts: servers
  roles:
  - role: apt-source-cn
    release: bionic
```
