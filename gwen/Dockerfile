# base alpine image with node
FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN npm install
RUN chown -R node.node /app

COPY . .

CMD ["npm", "run", "start"]

# install bash and java
RUN apk update \
    && apk add bash \
    && apk add openjdk11-jre \
    && apk add sudo
# Run as a non root user
RUN addgroup -S gwen && adduser -S gwen -G gwen -u 4936
USER gwen
