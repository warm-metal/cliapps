FROM zshusers/zsh:5.8
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN sh -c "$(curl -skL https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["zsh", "/usr/local/bin/entrypoint.sh"]
