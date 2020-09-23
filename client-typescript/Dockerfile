FROM node:14-buster-slim

WORKDIR /usr/src/app
COPY . .
RUN npm install
EXPOSE 1234

# cache npm 
# RUN /bin/sh -c 'npm start &' ; sleep 60 ; ps aux | grep npm | grep start | awk '{print $1}' | xargs kill -1

CMD npm start