FROM linuxserver/smokeping
MAINTAINER Joao Rua <joaorua@gmail.com>

RUN apk add python3-dev openssl-dev
RUN pip3 install speedtest-cli
COPY mods/speedtest.pm /usr/share/perl5/vendor_perl/Smokeping/probes/speedtest.pm

# ports
EXPOSE 80
