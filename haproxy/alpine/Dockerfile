FROM alpine:3.11
RUN apk add --no-cache haproxy tini
COPY haproxy.cfg /etc/haproxy/
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db"]
