FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Copy application files
COPY . .

# Expose port
EXPOSE 8888

# Start server
CMD ["npm", "start"]
