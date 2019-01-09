FROM node:latest
COPY docker-entrypoint.sh /
RUN npm install -g create-react-app && \
        chmod +x docker-entrypoint.sh
VOLUME /app
ENV APPNAME=myapp REDUX=false BULMA_CSS=false
EXPOSE 3000
ENTRYPOINT [ "sh", "/docker-entrypoint.sh" ] 
