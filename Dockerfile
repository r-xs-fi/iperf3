# edge because:
# - `riscv64` only available in there
FROM alpine:edge

ENTRYPOINT ["/usr/bin/iperf3"]

CMD ["--server"]

WORKDIR /workspace

RUN apk add --no-cache iperf3

# run as unprivileged user
USER 1000:1000
