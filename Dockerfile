FROM alpine:3.10

LABEL "com.github.actions.name"="godolint"
LABEL "com.github.actions.description"="Dockerfile linter"
LABEL "com.github.actions.icon"="framer"
LABEL "com.github.actions.color"="blue"

LABEL version="v0.1.1"
LABEL "repository"="https://github.com/zabio3/github-actions-godolint"
LABEL "homepage"="https://github.com/zabio3/github-actions-godolint"
LABEL "maintainer"="Tomohiro Kusumoto <zabio1192@gmail.com>"

RUN apk add --no-cache --no-progress curl=7.66.0-r0

RUN curl -L -s https://github.com/zabio3/godolint/releases/download/v0.1.1/godolint_0.1.1_linux_amd64.tar.gz | tar zx -C /usr/local/bin

COPY entrypoint.sh /entrypoint.sh
COPY bin/reviewdog /bin/reviewdog
ENTRYPOINT ["/entrypoint.sh"]
