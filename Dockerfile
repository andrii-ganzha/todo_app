FROM node:12-alpine
WORKDIR /todo_app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "/todo_app/src/index.js"]