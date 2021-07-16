FROM node
ENV MONGO_DB_USERNAME=user \
    MONGO_DB_PASSWORD=pass
RUN mkdir -p /home/app
# run commands get executed on the container
RUN echo hello world

COPY . /home/app

CMD [ "node", "server.js" ]


