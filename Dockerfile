FROM node:13-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --no-progress

COPY . .

RUN npm run build

EXPOSE 3333

CMD ["npm", "start"]