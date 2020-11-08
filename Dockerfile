FROM linuxserver/smokeping
MAINTAINER Joao Rua <joaorua@gmail.com>

RUN apk add python3-dev openssl-dev py3-pip
RUN pip3 install speedtest-cli
COPY mods/speedtest.pm /usr/share/perl5/vendor_perl/Smokeping/probes/speedtest.pm
# tcpping
COPY mods/tcpping /usr/bin/tcpping
# ports
EXPOSE 80
