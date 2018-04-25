FROM debian:jessie-slim
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5 && \
    echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.6 main" > /etc/apt/sources.list.d/mongodb-org-3.6.list
RUN apt-get update && \
    apt-get install -y mongodb-org-server mongodb-org-shell && \
    rm -rf /var/lib/apt/lists/*
COPY mongod.conf /etc/
USER mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongod.conf"]
