# # Docker Image which is used as foundation to create
# # a custom Docker Image with this Dockerfile
# FROM node:latest
 
# # A directory within the virtualized Docker environment
# # Becomes more relevant when using Docker Compose later
# WORKDIR /usr/src/app
 
# # Copies package.json and package-lock.json to Docker environment
# COPY package*.json ./
 
# # Installs all node packages
# #RUN npm install
 
# # Copies everything over to Docker environment
# COPY . .
 
# # Uses port which is used by the actual application
# EXPOSE 8080
 
# # Finally runs the application
# ENTRYPOINT [ "npm", "start" ]

# Extending image
FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Versions
RUN npm -v
RUN node -v

# Install app dependencies
COPY package*.json /usr/src/app/


# Bundle app source
COPY . /usr/src/app

# Port to listener
EXPOSE 3000



# Main command
CMD [ "npm", "start" ]
