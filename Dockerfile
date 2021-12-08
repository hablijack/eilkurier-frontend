FROM node:lts-alpine as builder

ARG AUTH0_CLIENT_ID
ARG AUTH0_DOMAIN

ENV AUTH0_DOMAIN=${AUTH0_DOMAIN}
ENV AUTH0_CLIENT_ID=${AUTH0_CLIENT_ID}

WORKDIR /app

ADD yarn.lock package.json ./
RUN yarn install  \
    --prefer-offline \
    --pure-lockfile \
    --non-interactive \
    --production=true

ADD . ./
RUN yarn build --standalone

FROM node:lts-alpine

WORKDIR /app

RUN yarn add "nuxt-start@2.15.8"

COPY --from=builder /app/.nuxt  ./.nuxt
COPY --from=builder /app/nuxt.config.js  .
COPY --from=builder /app/static  .

ENV HOST=0.0.0.0
ENV NUXT_PORT=$PORT

CMD [ "npx", "nuxt-start" ]