# Base Image
FROM node:14
# Add MetaData
LABEL MAINTAINER appsdba@oracle.com
# Source code
RUN mkdir /codeapp
COPY node.js /codeapp/node.js
COPY data.json /codeapp/data.json
# Dependencies
RUN npm install -y express body-parser
# Add Meta Data for Port in Application Server Port
EXPOSE 9000
# Main ()
CMD node /codeapp/node.js
