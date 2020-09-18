FROM debian:stable-slim

RUN apt-get update -qq && apt-get upgrade -y -qq
RUN apt-get install -qq -y ffmpeg

ADD run.sh /

CMD /run.sh
