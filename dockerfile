# Lightweight Node.js on Alpine
FROM node:22-alpine

# Create app directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies (build-base only if you need native modules)
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "index.js"]