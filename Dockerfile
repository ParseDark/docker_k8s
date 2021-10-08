FROM node:12-stretch

USER node

RUN npm set registry https://npm.paypal.com

RUN mkdir /home/node/code

WORKDIR /home/node/code

COPY --chown=node:node . .

RUN npm ci

CMD ["node", "index.js"]
