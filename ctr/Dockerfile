FROM docker.io/linuxkit/containerd:v0.8 as official

FROM alpine:3
RUN apk add --no-cache ca-certificates
COPY --from=official /usr/bin/ctr /usr/bin/
