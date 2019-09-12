FROM alpine:latest

MAINTAINER "Tiago Sampaio <tiago@tiagosampaio.com>"

ENV MAGENTO_VERSION=2.3.2 \
    MAGENTO_EDITION="Open Souce" \
    MAGENTO_DIR=/magento2

RUN mkdir /magento2 \
    && apk add --no-cache curl \
    && curl -L https://github.com/tiagosampaio/magento-opensource-releases/raw/${MAGENTO_VERSION}/magento.tar.bz2 -o ${MAGENTO_DIR}/magento.tar.bz2

WORKDIR ${MAGENTO_DIR}

CMD tail -f /dev/null
