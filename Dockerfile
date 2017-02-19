FROM alpine:3.5
MAINTAINER Cristian Todea <todea94@gmail.com>

RUN \
    adduser -D rtorrent && \
    apk --no-cache add rtorrent && \
    mkdir /home/rtorrent/session /home/rtorrent/downloaded

COPY rtorrent.rc /home/rtorrent/.rtorrent.rc

# VOLUME /home/rtorrent/

RUN chown rtorrent:rtorrent -R /home/rtorrent

USER rtorrent
WORKDIR /home/rtorrent

CMD ["rtorrent"]

