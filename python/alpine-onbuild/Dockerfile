FROM alpine:3.11
RUN apk add --no-cache py3-gunicorn
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--user=nobody", "--group=nobody", "--chdir=/srv/app", "--access-logfile=-", "--access-logformat=ACCESS_LOG: %(t)s %(L)s %(m)s %(U)s %(s)s", "app:app"]
ONBUILD COPY requirements.txt /srv/app/
ONBUILD RUN pip3 install --no-cache-dir -r /srv/app/requirements.txt
ONBUILD COPY app/ /srv/app/
