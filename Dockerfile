FROM node:12.12.0-alpine

WORKDIR /usr/src/app

RUN apk update && \
    apk add git && \
    npm add webpack@latest && \
    npm install -g npm @vue/cli && \
    npm install --save @vue/cli-service && \
    npm install --save-dev @babel/preset-react
