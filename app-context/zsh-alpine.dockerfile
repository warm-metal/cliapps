FROM frapsoft/zsh
RUN apk update && apk add ca-certificates curl && rm -rf /var/cache/apk/*
RUN sh -c "$(curl -skL https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["zsh", "/usr/local/bin/entrypoint.sh"]
