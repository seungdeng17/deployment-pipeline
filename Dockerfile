FROM node:16-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./next.config.js /usr/src/app/next.config.js
COPY ./public /usr/src/app/public
COPY ./.next /usr/src/app/.next
COPY ./node_modules /usr/src/app/node_modules
COPY ./package.json /usr/src/app/package.json

EXPOSE 3000

CMD ["yarn", "start"]
