FROM node:latest

MAINTAINER JB, no@mail.com

WORKDIR /home/app/test/api
ADD . /home/app/test/api

RUN npm config set registry http://registry.npmjs.org/

#install npm dependencies
RUN npm install
RUN npm install -g node-gyp

# Tell Docker we are going to use this port
EXPOSE 49150

# The command to run our app when the container is run
CMD [ "node", "server/server.js"]
