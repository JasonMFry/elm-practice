FROM node:14.2.0-stretch

RUN npm install -g nodemon

WORKDIR /app/
ADD package-lock.json .
ADD package.json .
RUN npm install
ADD . .

ENV PATH="/app/node_modules/.bin:$PATH"