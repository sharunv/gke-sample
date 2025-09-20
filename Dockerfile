

FROM node:20-alpine

WORKDIR /app

# Explicitly copy package.json and package-lock.json (no wildcard)
COPY package.json package-lock.json ./

# Install production dependencies based on the exact lockfile
RUN npm ci --production

# Copy the rest of the application source code
COPY . .

# Set environment variable for production
ENV NODE_ENV=production

# Open app port
EXPOSE 8080

# Run the Node.js server
CMD ["node", "server.js"]
