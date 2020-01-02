FROM alpine:3.11
RUN apk add --no-cache redis && \
    sed -i 's/^logfile \/var\/log\/redis\/redis.log/logfile ""/' /etc/redis.conf && \
    sed -i 's/^bind 127.0.0.1/bind 0.0.0.0/' /etc/redis.conf && \
    sed -i '/^unixsocket/d' /etc/redis.conf
CMD ["/usr/bin/redis-server", "/etc/redis.conf"]
