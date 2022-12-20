FROM timbru31/java-node

RUN apt-get update \
    && apt-get -y install atop
    
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]