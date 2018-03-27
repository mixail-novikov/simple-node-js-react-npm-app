FROM node:8.9.3-alpine

EXPOSE 80

WORKDIR /app
ADD package.json ./
RUN npm install

ADD . .
RUN npm run build

CMD ["npm", "start"]
