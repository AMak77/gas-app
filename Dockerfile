# Use the official Node.js image as the base image
FROM node:16.14.0-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose the port
EXPOSE 3000

RUN npm run build

# Start the application
CMD [ "node", "build/index.js" ]