FROM alpine:3.10

RUN apk add --no-cache --no-progress curl=7.66.0-r0 git=2.22.2-r0

RUN curl -L -s https://github.com/zabio3/godolint/releases/download/v0.1.1/godolint_0.1.1_linux_amd64.tar.gz | tar zx -C /bin

COPY entrypoint.sh /entrypoint.sh
COPY bin/reviewdog /bin/reviewdog
RUN chmod +x /bin/reviewdog
ENTRYPOINT ["/entrypoint.sh"]
