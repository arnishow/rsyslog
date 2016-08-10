FROM alpine:3.4

RUN apk add --update rsyslog
RUN rm -rf /var/cache/apk/*

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["rsyslogd","-n"]
