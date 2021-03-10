# crictl

## Install

```
sudo -E kubectl dev app install \
	--name crictl \
	--image docker.io/warmmetal/app-crictl:b28b61b \
	--env CONTAINER_RUNTIME_ENDPOINT=unix:///var/run/containerd/containerd.sock \
	--hostpath /var/run/containerd/containerd.sock \
	--use-proxy \
	crictl
```
Or, 
```
sudo -E kubectl dev app install \
	--name crictl \
	--dockerfile https://raw.githubusercontent.com/warm-metal/cliapps/master/crictl/Dockerfile \
	--env CONTAINER_RUNTIME_ENDPOINT=unix:///var/run/containerd/containerd.sock \
	--hostpath /var/run/containerd/containerd.sock \
	--use-proxy \
	crictl
```
