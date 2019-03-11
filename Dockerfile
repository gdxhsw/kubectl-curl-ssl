FROM alpine:3.8

MAINTAINER GDX Wu <gdx.nil@gmail.com>

ENV KUBECTL_VERSION="v1.13.4"

RUN apk add --update --no-cache ca-certificates gettext curl openssl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl
