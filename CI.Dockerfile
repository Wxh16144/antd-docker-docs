FROM joseluisq/static-web-server:2-alpine

# Copy the static website
COPY ./_site /public