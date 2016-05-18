FROM alpine:3.3

RUN apk add --update rsyslog
RUN rm -rf /var/cache/apk/*

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514/udp

ENTRYPOINT ["rsyslogd","-n"]
