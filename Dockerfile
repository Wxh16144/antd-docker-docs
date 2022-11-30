
FROM node:14 as build

ARG PROXY='' \
    TAG=''

RUN mkdir -p /scripts

COPY bootstrap.sh /scripts/bootstrap.sh

WORKDIR /scripts

RUN chmod +x bootstrap.sh

RUN ./bootstrap.sh ${TAG} /app ${PROXY}

FROM nginx:1.21.5-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

RUN rm -rf *

COPY --from=build /app/_site .

# https://stackoverflow.com/a/32663332/11302760
ENTRYPOINT ["nginx", "-g", "daemon off;"]
