# Use a lightweight Node user space image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install production dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# The command to run your app
CMD [ "npm", "start" ]
