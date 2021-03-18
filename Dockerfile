FROM alpine:3.12.4
ARG VERSION=2.9

RUN \
    apk update && \
    apk add ansible~=${VERSION}

RUN mkdir -p /ansible/playbooks
WORKDIR /ansible/playbooks

ENTRYPOINT ["ansible-playbook"]