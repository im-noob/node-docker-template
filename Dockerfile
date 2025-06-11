# Use a Node.js image to build the React app
FROM node:latest

# Set the working directory inside the container
WORKDIR /var/www

# Copy package.json and package-lock.json first to cache dependencies
COPY ./SRC_FOLDER/package.json ./SRC_FOLDER/package-lock.json ./

# Install dependencies
RUN npm install

# Copy all files to container
COPY ./SRC_FOLDER .

# Expose the development server port
EXPOSE 5173

# Start Vite server
CMD ["npm", "run", "dev"]
