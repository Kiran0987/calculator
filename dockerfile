# Use a lightweight Node.js image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json file to the container
COPY package.json .

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Specify the command to run the application
CMD ["npm", "start"]

# Expose port 3000 for the application to be accessible
EXPOSE 3000

