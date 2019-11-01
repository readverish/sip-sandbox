FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y apt-utils net-tools iputils-ping
RUN apt-get install -y build-essential

ADD https://github.com/SIPp/sipp/releases/download/v3.5.2/sipp-3.5.2.tar.gz /
RUN tar -xzf /sipp-3.5.2.tar.gz

RUN apt-get install -y libncurses5-dev

WORKDIR /sipp-3.5.2
RUN ./configure
RUN make install

WORKDIR /
RUN rm -rf sipp-3.5.2*

ENTRYPOINT  /sipp/entrypoint.sh
