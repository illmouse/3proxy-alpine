FROM alpine:latest

# Install runtime dependencies
RUN apk add --no-cache \
    3proxy --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing

# Switch to non-root user
USER 3proxy

ENTRYPOINT ["3proxy", "/etc/3proxy/3proxy.cfg"]