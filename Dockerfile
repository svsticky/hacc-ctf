FROM node:25.2.0

WORKDIR /app

COPY package.json .

RUN npm i --ignore-scripts

COPY server.js flags.csv index.html ./
COPY public ./public

USER 1000

EXPOSE 3000

CMD [ "node", "server.js" ]