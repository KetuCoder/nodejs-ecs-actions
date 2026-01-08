FROM node:20-alpine AS Builder

WORKDIR /app 

COPY package*.json ./

RUN npm install --production

COPY src ./src

FROM node:20-alpine

WORKDIR /app

COPY --from=Builder /app /app

EXPOSE 3000

CMD ["node","index.js"]