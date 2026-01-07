FROM joseluisq/static-web-server:2-alpine

# Copy the static website
COPY --chown=sws:sws ./_site /home/sws/public