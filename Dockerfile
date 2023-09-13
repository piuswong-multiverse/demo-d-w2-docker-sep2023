# base image
FROM node:18-alpine

# copy files from this path in the project --> to another path in the Docker image
COPY . /app

# where inside the Docker image we want to run the files
WORKDIR /app

# tell Docker to install all npm packages
RUN npm install

# expose the right port for our Docker image
EXPOSE 3000

# commands to run when we start
CMD ["npm", "start"]

# docker build . -t [tagname]
# docker run -p [port#onmachine]:[port#indockerfile] [tagnameofimage]