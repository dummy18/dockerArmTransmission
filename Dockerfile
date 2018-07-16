FROM alpine:latest

COPY settings.json /etc/transmission-daemon/settings.json
COPY transmission-daemon /etc/default/transmission-daemon

RUN touch /var/log/transmission.log

RUN apk --no-cache add transmission-daemon

VOLUME /var/lib/transmission-daemon/downloads /var/lib/transmission-daemon/Downloads

EXPOSE 9091

CMD tail -F /var/log/transmission.log
