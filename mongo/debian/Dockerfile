FROM debian:buster-slim
RUN apt update && \
    apt install -y wget gnupg2 && \
    wget -qO- https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
    echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" > /etc/apt/sources.list.d/mongodb-org-4.2.list && \
    apt update && \
    apt install -y mongodb-org-server mongodb-org-shell && \
    rm -rf /var/lib/apt/lists/*
COPY mongod.conf /etc/
USER mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongod.conf"]
