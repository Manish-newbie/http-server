FROM node:14-alpine

WORKDIR /src
COPY app.js /src/app.js

ENTRYPOINT ["node", "app.js"]