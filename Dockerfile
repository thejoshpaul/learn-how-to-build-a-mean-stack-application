FROM node:12

#Create app directory
WORKDIR /usr/src/lafs

#Install app dependencies
COPY package*.json ./

RUN npm install -g loopback-cli

RUN npm install

#Bundle app aource
COPY . .

EXPOSE 3000

CMD [ "node", "server/server.js" ]