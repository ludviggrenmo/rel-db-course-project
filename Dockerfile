FROM node:20.11-alpine3.18 AS base

WORKDIR /app

COPY . .
RUN npm install
RUN npm run build

USER node
ENTRYPOINT [ "node", "dist/index.js" ]