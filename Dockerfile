FROM alpine:3.3

RUN apk add --update py-pip ca-certificates
RUN rm -rf /var/cache/apk/*

RUN pip install --quiet --upgrade pip && \
    pip install --quiet --upgrade setuptools && \
    pip install --quiet -I flexget transmissionrpc

RUN mkdir /flexget

CMD ["/usr/bin/flexget", "-c", "/flexget/config.yml", "daemon", "start"]

