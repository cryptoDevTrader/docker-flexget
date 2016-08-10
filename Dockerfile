FROM alpine:3.4

RUN apk add --no-cache py-pip ca-certificates

RUN pip install --quiet --upgrade pip && \
    pip install --quiet --upgrade setuptools && \
    pip install --quiet -I flexget transmissionrpc

RUN mkdir /flexget

WORKDIR /flexget

#ENTRYPOINT ["/usr/bin/flexget","-c","/flexget/config.yml","--loglevel","warning","daemon","start"]
ENTRYPOINT ["/usr/bin/flexget","-c","/flexget/config.yml","--loglevel","verbose","daemon","start"]
