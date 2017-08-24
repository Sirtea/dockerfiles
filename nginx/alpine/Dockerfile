FROM alpine:3.6
RUN apk add --no-cache nginx && \
    ln -s /dev/stdout /var/log/nginx/access.log && \
    ln -s /dev/stderr /var/log/nginx/error.log && \
    mkdir /run/nginx && \
    rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
