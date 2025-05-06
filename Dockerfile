# Use official Node.js image as a base image
FROM node:22

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port the app will run on
EXPOSE 5000

# Start the Express.js app
CMD ["npm", "start"]
