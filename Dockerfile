#dockerize a node app

FROM node:18

#Create app directory
WORKDIR /usr/src/app

#Install app dependencies
COPY package*.json ./

#Install dependencies
RUN npm install

#Bundle app source
COPY . .

#Expose the port
EXPOSE 3000

#Run the app
CMD [ "node", "index.js" ]