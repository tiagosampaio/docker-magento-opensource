FROM alpine:latest

MAINTAINER "Tiago Sampaio <tiago@tiagosampaio.com>"

ENV MAGENTO_VERSION=2.3.2 \
    MAGENTO_EDITION="Open Souce" \
    MAGENTO_DIR=/magento

RUN mkdir ${MAGENTO_DIR} \
    && apk add --no-cache curl \
    && curl -L https://github.com/tiagosampaio/magento-opensource-releases/archive/${MAGENTO_VERSION}.tar.gz | tar xzf - -o -C ${MAGENTO_DIR}

WORKDIR ${MAGENTO_DIR}

CMD tail -f /dev/null
