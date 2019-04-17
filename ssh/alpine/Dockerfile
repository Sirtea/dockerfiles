FROM alpine:3.9
RUN apk add --no-cache openssh-server openssh-sftp-server openssh-client
COPY start.sh /
CMD ["/start.sh"]
