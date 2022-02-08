FROM node:13-alpine

#ENV MONGO_DB_USERNAME=admin \
#   MONGO_DB_PWD=password

# creating a directory in a container
RUN mkdir -p /home/app

# "./app" and "/home/app" are source and destination respectively, we are copying the current directory files from host to container 
COPY ./app /home/app

CMD ["node", "/home/app/server.js"]

