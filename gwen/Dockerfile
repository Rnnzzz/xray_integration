# base alpine image with node
FROM node:17-alpine

# install bash and java
RUN apk update \
    && apk add bash \
    && apk add openjdk11-jre

RUN curl -L \
  "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

# Run as a non root user
RUN addgroup -S gwen && adduser -S gwen -G gwen -u 4936
USER gwen
