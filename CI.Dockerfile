FROM joseluisq/static-web-server:2-alpine

ENV SERVER_ROOT=/home/sws/public

# Copy the static website
COPY --chown=sws:sws ./_site /home/sws/public