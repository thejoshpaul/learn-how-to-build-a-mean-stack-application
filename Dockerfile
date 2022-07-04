FROM node:10

#Create app directory
WORKDIR /usr/src/lafs

#Install app dependencies
COPY package*.json ./

RUN npm install

#Bundle app aource
COPY . .

EXPOSE 8080

CMD [ "node", "server.js"]