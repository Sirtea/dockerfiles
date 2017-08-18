FROM alpine:3.6
RUN apk add --no-cache redis && \
    sed -i 's/^daemonize yes/daemonize no/g' /etc/redis.conf && \
    sed -i 's/^logfile \/var\/log\/redis\/redis.log/logfile ""/g' /etc/redis.conf && \
    sed -i 's/^pidfile \/var\/run\/redis\/redis.pid/pidfile ""/g' /etc/redis.conf && \
    sed -i 's/bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis.conf
CMD ["/usr/bin/redis-server", "/etc/redis.conf"]
