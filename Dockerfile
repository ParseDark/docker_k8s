FROM node:12-stretch

RUN npm set registry https://npm.paypal.com

RUN npm i -g nodemon

USER node

RUN npm set registry https://npm.paypal.com

RUN mkdir /home/node/code

WORKDIR /home/node/code

COPY --chown=node:node package-lock.json package.json ./

RUN npm ci

COPY --chown=node:node . .

CMD ["nodemon", "index.js"]
