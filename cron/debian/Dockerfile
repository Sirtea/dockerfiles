FROM debian:buster-slim
RUN apt update && \
    apt install -y --no-install-recommends tini cron && \
    rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/usr/bin/tini", "--"]
COPY start.sh /
CMD ["/start.sh"]
