# Specify a base image
FROM node:10.15-alpine

# Adding working directory
WORKDIR /usr/app

# Install some dependencies
COPY ["./package.json", "./"]

RUN npm install

COPY ["./","./"]

# Setup default command
CMD ["npm","start"]
