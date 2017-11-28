FROM alpine:3.4

RUN apk add --no-cache py-pip ca-certificates

RUN pip install --quiet --upgrade pip && \
    pip install --quiet --upgrade setuptools && \
    pip install --quiet -I flexget transmissionrpc python-telegram-bot

RUN mkdir /flexget
ADD start.sh /flexget/

WORKDIR /flexget

CMD /flexget/start.sh
