FROM node:10-alpine
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

USER node

COPY package*.json ./
COPY . ./
RUN npm install
COPY . .

CMD [ "node", "index.js" ]