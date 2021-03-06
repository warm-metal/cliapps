.PHONY: all
all: app-context-bash-alpine app-context-bash-ubuntu app-context-zsh-ubuntu app-context-zsh-alpine

.PHONY: app-context-bash-alpine
app-context-bash-alpine:
	kubectl dev build -f bash-alpine.dockerfile -t docker.io/warmmetal/app-context-bash-alpine:v0.2.0 app-context
	kubectl dev build -f bash-alpine.dockerfile -t docker.io/warmmetal/app-context-bash-alpine:latest app-context

.PHONY: app-context-bash-ubuntu
app-context-bash-ubuntu:
	kubectl dev build -f bash-ubuntu.dockerfile -t docker.io/warmmetal/app-context-bash-ubuntu:v0.2.0 app-context
	kubectl dev build -f bash-ubuntu.dockerfile -t docker.io/warmmetal/app-context-bash-ubuntu:latest app-context

.PHONY: app-context-zsh-ubuntu
app-context-zsh-ubuntu:
	kubectl dev build -f zsh-ubuntu.dockerfile -t docker.io/warmmetal/app-context-zsh-ubuntu:v0.2.1 app-context
	kubectl dev build -f zsh-ubuntu.dockerfile -t docker.io/warmmetal/app-context-zsh-ubuntu:latest app-context

.PHONY: app-context-zsh-alpine
app-context-zsh-alpine:
	kubectl dev build -f zsh-alpine.dockerfile -t docker.io/warmmetal/app-context-zsh-alpine:v0.2.1 app-context
	kubectl dev build -f zsh-alpine.dockerfile -t docker.io/warmmetal/app-context-zsh-alpine:latest app-context
