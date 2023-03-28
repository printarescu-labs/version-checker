ARG ARCH="amd64"
ARG OS="linux"

FROM alpine:3.17.2
LABEL description="Kubernetes utility for exposing used image versions compared to the latest version, as metrics."

RUN apk --no-cache add ca-certificates

COPY ./bin/version-checker /usr/bin/version-checker

USER       nobody
EXPOSE     8080

ENTRYPOINT ["/usr/bin/version-checker"]
