FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./nttsrv/package/package.json ./
COPY ./nttsrv/package/server.js ./
COPY ./ntt/package/build/ ./public

# If you are building your code for production
RUN npm install --omit=dev --only=production

EXPOSE 3000
CMD [ "node", "server.js" ]
