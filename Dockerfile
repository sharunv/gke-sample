FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm ci --production
COPY . .
ENV NODE_ENV=production
EXPOSE 8080
CMD ["node","server.js"]
