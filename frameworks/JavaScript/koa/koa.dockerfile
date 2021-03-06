FROM node:14.15.1-slim

COPY ./ ./

RUN npm install

ENV NODE_ENV production
ENV NODE_HANDLER mongoose

EXPOSE 8080

CMD ["node", "app.js"]
