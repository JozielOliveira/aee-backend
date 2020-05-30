FROM strapi/base

WORKDIR /berooms

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

RUN yarn add sharp

COPY . .

ENV NODE_ENV production

RUN yarn build

EXPOSE $PORT

CMD ["yarn", "start"]
