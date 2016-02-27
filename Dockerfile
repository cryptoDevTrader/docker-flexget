FROM alpine:3.3

RUN apk add --update py-pip ca-certificates
RUN rm -rf /var/cache/apk/*

RUN pip install --quiet --upgrade pip && \
    pip install --quiet --upgrade setuptools && \
    pip install --quiet -I flexget transmissionrpc

RUN mkdir /flexget

WORKDIR /flexget

#ENTRYPOINT ["/usr/bin/flexget","-c","/flexget/config.yml","--loglevel","warning","daemon","start"]
ENTRYPOINT ["/usr/bin/flexget","-c","/flexget/config.yml","--loglevel","verbose","daemon","start"]
