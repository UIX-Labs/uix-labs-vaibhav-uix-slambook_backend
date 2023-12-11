FROM node:14

# Create app directory
WORKDIR /app/backend

# Install app dependencies
COPY backend/package*.json ./
RUN npm install

# Bundle app source
COPY backend/ ./

# Expose the port the app runs on
EXPOSE 80

# Define the command to run your app
CMD ["npm", "start"]
