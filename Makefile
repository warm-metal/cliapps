.PHONY: app-context-bash-alpine
app-context-bash-alpine:
	kubectl dev build -f bash-alpine.dockerfile -t docker.io/warmmetal/app-context-bash-alpine:v0.1.0 .

.PHONY: app-context-bash-ubuntu
app-context-bash-ubuntu:
	kubectl dev build -f bash-ubuntu.dockerfile -t docker.io/warmmetal/app-context-bash-ubuntu:v0.1.0 .

.PHONY: app-context-zsh-ubuntu
app-context-zsh-ubuntu:
	kubectl dev build -f zsh-ubuntu.dockerfile -t docker.io/warmmetal/app-context-zsh-ubuntu:v0.1.0 .

.PHONY: app-context-zsh-alpine
app-context-zsh-alpine:
	kubectl dev build -f zsh-alpine.dockerfile -t docker.io/warmmetal/app-context-zsh-alpine:v0.1.0 .

all: app-context-bash-alpine app-context-bash-ubuntu app-context-zsh-ubuntu app-context-zsh-alpine