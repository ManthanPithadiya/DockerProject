
FROM node:18-alpine

WORKDIR /usr/src/app


COPY package*.json ./


RUN npm install --production


COPY . .

# Build the application (if using Next.js)
RUN npm run build


EXPOSE 3000


CMD ["npm", "start"]
