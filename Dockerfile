FROM resin/armhf-alpine:latest

LABEL maintainer="steve@bargelt.com"

ENV version=0.8.3
ENV os=linux
ENV arch=arm

ADD https://releases.hashicorp.com/vault/${version}/vault_${version}_${os}_${arch}.zip /tmp/vault.zip

RUN \
  cd /bin &&\
  unzip /tmp/vault.zip &&\
  chmod +x /bin/vault &&\
  rm /tmp/vault.zip &&\
  apk update &&\
  apk add ca-certificates

EXPOSE 8200

VOLUME /etc/vault.hcl

ENTRYPOINT ["/bin/vault", "server"]

CMD ["-config=/etc/vault.hcl"]
