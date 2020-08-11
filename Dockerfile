FROM node:latest

VOLUME /tmp
EXPOSE 80

# start app
CMD ["npm", "start"]
