# Dockerfile
FROM node:current-alpine

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# create destination directory
RUN mkdir -p /usr/src/eilkurier
WORKDIR /usr/src/eilkurier

# update and install dependency
RUN apk update && apk upgrade && apk add --no-cache --virtual .build_deps git python3 make g++

# copy the app, note .dockerignore
COPY . /usr/src/eilkurier/
RUN npm install && npm run build

RUN npm prune --production && apk del .build_deps

EXPOSE 3000

CMD ["npm", "start"]