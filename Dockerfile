# Dockerfile
FROM node:14
WORKDIR /app
COPY package.json /app
RUN npm ci
COPY . /app
CMD ["node", "index.js"]
EXPOSE 8080
