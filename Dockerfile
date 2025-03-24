FROM node:20-alpine

WORKDIR /app

COPY . .
RUN npm install && npm run build
RUN npm install -g serve

# Serve on port 80 for Divio compatibility
CMD ["serve", "-s", "dist", "-l", "80"]
