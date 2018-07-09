FROM alpine:3.8
RUN apk add --no-cache mongodb && \
    rm /usr/bin/mongos /usr/bin/mongoperf /usr/bin/install_compass && \
    install -d -o mongodb -g mongodb -m 0755 /srv/mongodb
COPY mongod.conf /etc/
USER mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongod.conf"]
