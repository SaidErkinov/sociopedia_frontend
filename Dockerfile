FROM node:16-alpine

WORKDIR /CLIENT

COPY . .

RUN npm install
RUN npm i -g serve
RUN npm run build


EXPOSE 3000

CMD ["serve", "-s", "build"]
