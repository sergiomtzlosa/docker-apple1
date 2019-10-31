FROM alpine:3.6

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh make musl-dev gcc ncurses-dev ncurses-libs libedit-dev

WORKDIR /

RUN git clone --recursive https://github.com/RyuKojiro/apple1.git

RUN cd apple1 && make

ADD start.sh /start.sh

ENTRYPOINT ["./start.sh"]
