FROM node:20.10.0-alpine3.17


RUN apk update &&\ 
    apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git &&\
    npm install -g node-gyp &&\
    npm config set fetch-retry-maxtimeout 600000 -g


WORKDIR /app
COPY package*.json .
RUN chown -R node:node /app
USER node
RUN npm i


ENV PATH /app/node_modules/.bin:$PATH
RUN ["npm", "run", "build"]

EXPOSE 1337
CMD ["npm", "run", "develop"]