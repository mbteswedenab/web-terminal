FROM node:6.9.4

COPY ./package.json /terminal/package.json

WORKDIR /terminal

RUN apk add --no-cache make gcc g++ python
RUN npm install

COPY ./app /terminal/app

EXPOSE 8000

CMD ["sh", "-c", "node app/index.js"]
