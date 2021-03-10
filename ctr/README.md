# ctr

## Install

```
sudo -E kubectl dev app install \
	--name ctr -n default \
	--image docker.io/warmmetal/ctr:v0.1.0 \
	--env CONTAINERD_NAMESPACE=k8s.io \
	--hostpath /var/run/containerd/containerd.sock \
	--use-proxy \
	ctr
```
Or, 
```
sudo -E kubectl dev app install \
	--name ctr -n default \
	--dockerfile https://raw.githubusercontent.com/warm-metal/cliapps/master/ctr/Dockerfile \
	--env CONTAINERD_NAMESPACE=k8s.io \
	--hostpath /var/run/containerd/containerd.sock \
	--use-proxy \
	ctr
```
