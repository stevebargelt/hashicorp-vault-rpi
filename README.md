# hashicorp-vault-rpi - [![Build Status](https://travis-ci.org/stevebargelt/hashicorp-vault-rpi.svg?branch=master)](https://travis-ci.org/stevebargelt/hashicorp-vault-rpi)[![Docker Hub Pulls](https://img.shields.io/docker/pulls/stevebargelt/hashicorp-vault-rpi.svg)](https://hub.docker.com/r/stevebargelt/hashicorp-vault-rpi/)

Twitter: [@stevebargelt](http://www.twitter.com/stevebargelt)

### Config File

### Config File

```
```

### Docker Run

```
docker run \
    --rm \
    --name vault-dev \
    --memory-swap -1 \
    -d \
    -v "vault.hcl:/etc/vault.hcl" \
    -p 8200:8200 \
    stevebargelt/hashicorp-vault-rpi -dev
```

Connect to the container:

```
docker exec -it vault-dev /bin/sh
```

```
export VAULT_ADDR=http://127.0.0.1:8200
```

```
vault status
```

```
exit
```

```
alias vault='docker exec -it vault-dev vault "$@"'
export VAULT_ADDR=http://127.0.0.1:8200
```

### just notes to myself...

ARMv7hf
RPi 3
FROM resin/armhf-alpine:latest
RPi 2
FROM resin/armhf-alpine:latest

ARMv6hf
RPi 1 and Zero
FROM resin/armhf-alpine:latest

