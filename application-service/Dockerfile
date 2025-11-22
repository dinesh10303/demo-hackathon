FROM node:18-alpine

WORKDIR /app

COPY *.json ./

RUN npm install --production

COPY . .

CMD ["node", "src/index.js"]


