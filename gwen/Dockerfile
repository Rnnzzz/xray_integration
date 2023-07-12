# base alpine image with node
FROM node:18-alpine

RUN chown -R node.node /app
# install bash and java
RUN apk update \
    && apk add bash \
    && apk add openjdk11-jre \
    && apk add sudo
# Run as a non root user
RUN addgroup -S gwen && adduser -S gwen -G gwen -u 4936
USER gwen
