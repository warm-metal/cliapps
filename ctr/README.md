# ctr

## Install

```
sudo -E kubectl dev app install --name ctr -n default --env CONTAINERD_NAMESPACE=k8s.io --image docker.io/warmmetal/ctr:v1 --hostpath /var/run/containerd/containerd.sock --use-proxy ctr
```
Or, 
```
sudo -E kubectl dev app install --name ctr -n default --env CONTAINERD_NAMESPACE=k8s.io --dockerfile https://raw.githubusercontent.com/warm-metal/cliapps/master/ctr/Dockerfile --hostpath /var/run/containerd/containerd.sock --use-proxy ctr
```
