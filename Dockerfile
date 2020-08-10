FROM node:latest
VOLUME /tmp
EXPOSE 8080
ENTRYPOINT ["npm", "start"]
