FROM docker.io/library/golang:1.15 as builder
WORKDIR /go/src/github.com/kubernetes-sigs/cri-tools
RUN git clone --depth 1 https://github.com/kubernetes-sigs/cri-tools.git .
RUN make crictl

FROM alpine:3
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/src/github.com/kubernetes-sigs/cri-tools/build/bin/crictl /usr/bin/
