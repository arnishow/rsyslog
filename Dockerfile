FROM alpine:3.6

RUN apk add --no-cache rsyslog rsyslog-mysql

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["/entrypoint.sh"]
