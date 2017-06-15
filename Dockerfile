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

EXPOSE 3001
EXPOSE 8333

ARG TZ

ENV TZ $TZ

CMD \
  bitcored
