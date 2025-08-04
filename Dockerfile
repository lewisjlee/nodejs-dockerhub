# Dockerfile
FROM node:24.4.1
WORKDIR /app
COPY package*.json /app
RUN npm ci
COPY . /app
CMD ["node", "index.js"]
EXPOSE 8080
