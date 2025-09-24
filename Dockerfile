FROM node:24-alpine

#Sets the working directory inside the container
WORKDIR /app

#Copies package.json and package-lock.json to the working directory and installs dependencies
COPY package*.json ./
RUN npm install --production

#Copies the rest of the application code to the working directory
COPY . .

#Exposes port 3000 to the host machine
EXPOSE 3000

#Sets the command to run the application
CMD ["npm", "start"]