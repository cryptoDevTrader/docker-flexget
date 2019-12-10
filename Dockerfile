FROM alpine:3.8

RUN apk add --no-cache py-pip ca-certificates

RUN pip install --quiet --upgrade pip
RUN pip install --quiet --upgrade setuptools
RUN pip install --quiet -I flexget
RUN pip install --quiet -I python-telegram-bot
RUN pip install --quiet -I transmissionrpc

RUN mkdir /flexget
ADD start.sh /flexget/

WORKDIR /flexget

CMD /flexget/start.sh
