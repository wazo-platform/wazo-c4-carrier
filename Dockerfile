FROM debian:buster-slim
LABEL maintainer="Wazo Authors <dev@wazo.community>"
ENV VERSION 1.0.0
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    bash \
    sudo \
    sipsak \
    sip-tester \
    sngrep \
    ngrep \
    curl \
    sudo \
    netcat \
    consul \
    iproute2 \
    && apt-get clean
COPY ./scenarios/ /scenarios/
WORKDIR /scenarios/
