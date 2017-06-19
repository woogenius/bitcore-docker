FROM node:4

RUN \
  apt-get update --force-yes -y && \
  apt-get install -y --force-yes libzmq3-dev build-essential vim python

RUN \
  npm install -g bitcore

COPY . /src

WORKDIR /src

RUN \
  npm install

ARG TZ
ARG NETWORK

ENV TZ $TZ
ENV NETWORK $NETWORK

EXPOSE 3001
EXPOSE 8333

CMD \
  mv ./config/$NETWORK.json ./bitcore-node.json &&  \
  bitcored
