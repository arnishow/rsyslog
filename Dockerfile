FROM alpine:3.4

RUN apk add --no-cache rsyslog

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["rsyslogd","-n"]
