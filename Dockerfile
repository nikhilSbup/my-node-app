# Use the Node.js 18 -alpine base image (alpine is lightweight) Linux distribution)
FROM node:18-alpine

#set the working directory inside the container 
WORKDIR /app

#copy the package.json and package-lock.json files
#we copy these 
COPY package*.json ./

#install the node js dependencies
RUN npm install


#copy the application code into the working directory
COPY . .

EXPOSE 3000

CMD [ "node","app.js" ]