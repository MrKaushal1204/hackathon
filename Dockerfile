FROM node:latest

VOLUME /tmp
EXPOSE 3000

# start app
CMD ["npm", "start"]
