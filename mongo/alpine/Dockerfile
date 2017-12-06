FROM alpine:3.7
RUN apk add --no-cache mongodb && \
    rm /usr/bin/mongos /usr/bin/mongoperf && \
    install -d -o mongodb -g mongodb -m 0755 /srv/mongodb
COPY mongod.conf /etc/
USER mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongod.conf"]
