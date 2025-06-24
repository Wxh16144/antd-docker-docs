
FROM node:20 AS build

ARG REPO='' \
    TAG=''  \
    NPM_REGISTRY=''

RUN mkdir -p /scripts

COPY bootstrap.sh /scripts/bootstrap.sh

WORKDIR /scripts

RUN chmod +x bootstrap.sh

RUN ./bootstrap.sh ${TAG} /app ${REPO} ${NPM_REGISTRY}

FROM joseluisq/static-web-server:2-alpine

# Copy the static website
COPY ./_site /public
