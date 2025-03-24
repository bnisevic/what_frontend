FROM node:20-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

RUN npm run build
EXPOSE 80
CMD ["npx", "serve", "-s", "build", "-l", "80"]

# npm run build + serve -s build for a production-ready static build
