FROM alpine:3.10
RUN apk add --no-cache redis && \
    sed -i 's/^logfile \/var\/log\/redis\/redis.log/logfile ""/' /etc/redis.conf && \
    sed -i '/^bind/d' /etc/redis.conf && \
    sed -i '/^unixsocket/d' /etc/redis.conf
CMD ["/usr/bin/redis-server", "/etc/redis.conf"]
