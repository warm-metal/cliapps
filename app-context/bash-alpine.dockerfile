FROM bash:5
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["bash", "/usr/local/bin/entrypoint.sh"]
