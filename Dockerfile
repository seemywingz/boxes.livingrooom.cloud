
FROM node:14.8.0

WORKDIR /app

COPY  ./ $WORKDIR

RUN yarn && yarn dist

ENTRYPOINT [ "node", "srv/server.js" ]
