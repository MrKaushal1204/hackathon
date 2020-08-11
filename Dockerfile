FROM node:14.1-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install app dependencies
COPY package.json /usr/src/app

ADD src /usr/src/app/src
ADD public /usr/src/app/public

# start app
CMD ["npm", "start"]
