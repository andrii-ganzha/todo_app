FROM node:12-alpine
WORKDIR /todo-list-app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "/todo-list-app/src/index.js"]