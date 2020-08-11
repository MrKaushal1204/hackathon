FROM node:latest

VOLUME /tmp
EXPOSE 80

# start app
ENTRYPOINT ["npm", "start"]
