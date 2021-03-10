# crictl

## Install

```
sudo -E kubectl dev app install --name crictl --image docker.io/warmmetal/app-crictl:v0.1.0 --env CONTAINER_RUNTIME_ENDPOINT=unix:///var/run/containerd/containerd.sock --hostpath /var/run/containerd/containerd.sock --use-proxy crictl
```
Or, 
```
sudo -E kubectl dev app install --name crictl --dockerfile https://raw.githubusercontent.com/warm-metal/cliapps/master/crictl/Dockerfile --env CONTAINER_RUNTIME_ENDPOINT=unix:///var/run/containerd/containerd.sock --hostpath /var/run/containerd/containerd.sock --use-proxy crictl
```
