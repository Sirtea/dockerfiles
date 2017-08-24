FROM alpine:3.6
RUN apk add --no-cache nodejs-npm
WORKDIR /srv/app
CMD ["npm", "start"]
ONBUILD COPY app/package.json .
ONBUILD RUN npm install && rm -R /root/.npm && rm -R /tmp/npm*
ONBUILD USER nobody
ONBUILD COPY app/ .
