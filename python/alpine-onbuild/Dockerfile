FROM alpine:3.7
RUN apk add --no-cache py-gunicorn py2-pip
CMD ["/usr/bin/gunicorn", "--bind=0.0.0.0:8080", "--user=nobody", "--group=nobody", "--workers=2", "--chdir=/srv/app", "--access-logfile=-", "--access-logformat=ACCESS_LOG: %(t)s %(D)s %(m)s %(U)s %(s)s", "app:app"]
ONBUILD COPY app/requirements.txt /srv/app/
ONBUILD RUN pip install -r /srv/app/requirements.txt
ONBUILD COPY app/ /srv/app/
