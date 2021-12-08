FROM node:lts as builder

ARG AUTH0_CLIENT_ID
ARG AUTH0_DOMAIN

ENV AUTH0_DOMAIN=${AUTH0_DOMAIN}
ENV AUTH0_CLIENT_ID=${AUTH0_CLIENT_ID}

WORKDIR /app

COPY . .

RUN yarn install \
    --prefer-offline \
    --frozen-lockfile \
    --non-interactive \
    --production=false

RUN yarn build

RUN rm -rf node_modules && \
    NODE_ENV=production yarn install \
    --prefer-offline \
    --pure-lockfile \
    --non-interactive \
    --production=true

FROM node:lts

WORKDIR /app

COPY --from=builder /app  .

ENV HOST=0.0.0.0
ENV NUXT_PORT=$PORT

CMD [ "yarn", "start" ]