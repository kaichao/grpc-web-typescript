# FROM node:14-buster-slim
FROM node:14-buster

WORKDIR /usr/src/app
COPY . .
RUN npm install
EXPOSE 1234

# cache npm 
RUN /bin/sh -c 'npm start &' ;  sleep 40 ; ps aux|grep "npm$"|awk '{print $2}'|xargs kill -1

CMD npm start