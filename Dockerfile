FROM ubuntu:xenial
LABEL maintainer "kusmirekwiktor@gmail.com"

RUN apt-get update && apt-get upgrade -y -q

RUN apt-get install -y -q \
    software-properties-common \
    apt-utils build-essential wget gzip perl cpanminus

RUN cpan install JSON
RUN cpan install LWP::UserAgent

RUN wget http://www.repeatmasker.org/RepeatModeler/RepeatModeler-open-1.0.11.tar.gz

RUN tar -zxvf RepeatModeler-open-1.0.11.tar.gz
