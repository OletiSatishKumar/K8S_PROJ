# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install Node.js dependencies
RUN npm ci --only=production

# Copy the entire project into the container
COPY . .

# Expose the application port (make sure it matches your server setup)
EXPOSE 8000

# Start the application
CMD ["npm", "start"]
