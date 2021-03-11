# k3s

It is way easier to create k3s cluster by hand, as opposed to writing an ansible role for this.

```
# On master nodes
curl -sfL http://rancher-mirror.cnrancher.com/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn INSTALL_K3S_EXEC="--disable traefik --disable servicelb --tls-san <master_ip>" K3S_TOKEN=<join_token> sh -

# On worker nodes
curl -sfL http://rancher-mirror.cnrancher.com/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn K3S_URL=https://<master_ip>:6443 K3S_TOKEN=<join_token> sh -
```

## Longhorn

```
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/master/deploy/longhorn.yaml
```

_Optionally, patch this storage class to default_


## MetalLB

Install MetalLB according to the [instructions](https://metallb.universe.tf)

Typically, reserve a pool of IP but do not auto-assign.