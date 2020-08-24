FROM node:14.8.0

WORKDIR /usr/src/app

COPY package*.json ./

ENV NODE_ENV="production"

RUN npm install --production

COPY . .

CMD ["./bin/cli.js", "--help"]
