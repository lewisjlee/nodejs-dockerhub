# Dockerfile
FROM node:24.4-alpine
WORKDIR /app
COPY package*.json /app
RUN npm ci --only=production
COPY . /app
CMD ["node", "index.js"]
EXPOSE 8080
