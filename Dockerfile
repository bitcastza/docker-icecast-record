FROM debian:stable-slim

RUN apt-get update -qq && apt-get upgrade -y -qq
RUN apt-get install -qq -y ffmpeg
RUN mkdir -p /srv/logs

ADD run.sh /

VOLUME /srv/logs

CMD /run.sh
