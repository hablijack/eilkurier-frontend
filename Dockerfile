# Dockerfile
FROM node:16-alpine

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=$PORT

# create destination directory
RUN mkdir -p /usr/src/eilkurier
WORKDIR /usr/src/eilkurier

# update and install dependency
RUN apk update && apk --no-cache --virtual build-dependencies add python3 make g++

# copy the app, note .dockerignore
COPY . /usr/src/eilkurier/
RUN npm install 
RUN npm run build

RUN npm prune --production && apk del .build_deps

CMD ["npm", "start"]