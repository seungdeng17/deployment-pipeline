FROM node:14-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

COPY --from=build /app/.next .next

RUN yarn add next

EXPOSE 3000

CMD ["yarn", "start"]
