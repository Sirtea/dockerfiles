FROM debian:stretch-slim
RUN apt-get update && \
    apt-get install -y gnupg2 && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 && \
    echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list &&  \
    apt-get update && \
    apt-get install -y mongodb-org-server mongodb-org-shell && \
    rm -rf /var/lib/apt/lists/*
COPY mongod.conf /etc/
USER mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongod.conf"]
