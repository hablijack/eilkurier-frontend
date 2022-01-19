FROM node:lts-alpine as builder

ARG AUTH0_CLIENT_ID
ARG AUTH0_DOMAIN
ARG AUTH0_AUDIENCE

ENV AUTH0_DOMAIN=${AUTH0_DOMAIN}
ENV AUTH0_CLIENT_ID=${AUTH0_CLIENT_ID}
ENV AUTH0_AUDIENCE=${AUTH0_AUDIENCE}

WORKDIR /app

ADD . ./
RUN yarn install

RUN yarn build --standalone

FROM node:lts-alpine

WORKDIR /app

RUN yarn add nuxt-start

COPY --from=builder /app/.nuxt ./.nuxt
COPY --from=builder /app/nuxt.config.js .
COPY --from=builder /app/static ./static

ENV HOST=0.0.0.0
ENV NUXT_PORT=$PORT

CMD [ "npx", "nuxt-start" ]