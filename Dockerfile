FROM alpine:latest

MAINTAINER "Tiago Sampaio <tiago@tiagosampaio.com>"

ENV MAGENTO_VERSION=2.2.9 \
    MAGENTO_EDITION="Open Souce" \
    MAGENTO_DIR=/magento

RUN apk add --no-cache curl \
    && curl -L https://github.com/tiagosampaio/magento-opensource-releases/archive/${MAGENTO_VERSION}.tar.gz | tar xzf - -o -C . \
    && mv magento-opensource-releases* ${MAGENTO_DIR}

WORKDIR ${MAGENTO_DIR}

CMD tail -f /dev/null
