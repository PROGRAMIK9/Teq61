#Technique 61

#Import Base imahe
FROM node:18-alpine

LABEL author="M Aaryamann Prabhu"
LABEL description="Dockerfile to connect git and docker"
#Set working directory
WORKDIR /app

#Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json .

#Install dependencies
RUN npm install

#Copy the rest of the application code to the working directory
COPY . .

#Expose the port that the application will run on
EXPOSE 3000

#Start the application
CMD ["npm", "start"]
