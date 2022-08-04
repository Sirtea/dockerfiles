FROM alpine:3.16
RUN apk add --no-cache openssh git && \
    adduser -S -D -h /srv/git -s /bin/sh git
COPY start.sh /
CMD ["/start.sh"]
