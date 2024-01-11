
#changed the node version 
FROM node:18-alpine 
ENV NODE_ENV=production 
LABEL maintainer="pokecave Team"
LABEL summary="pokecave Proxy Image"
LABEL description="Example application of pokecave which can be deployed in production." 
WORKDIR /app 
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
EXPOSE 8080
COPY . .
CMD [ "npm", "start" ]
