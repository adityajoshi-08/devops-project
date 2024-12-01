# Use official Node.js image as base
FROM node:20-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
# RUN npm ci --only=production
RUN npm ci

# Copy all files to container
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port that Cloud Run uses
EXPOSE 8080

# Start the app on port 8080
CMD ["npm", "start"]
