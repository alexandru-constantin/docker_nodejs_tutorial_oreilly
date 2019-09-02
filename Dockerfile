FROM node

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm i

COPY . .
EXPOSE 30000

CMD node index.js