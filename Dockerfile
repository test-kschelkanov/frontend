FROM node:8-alpine

COPY ./ /app

WORKDIR /app

RUN apk --no-cache add yarn

RUN yarn

ENTRYPOINT run build

EXPOSE 3000
