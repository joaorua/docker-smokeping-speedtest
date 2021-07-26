FROM linuxserver/smokeping
MAINTAINER Joao Rua <joaorua@gmail.com>

RUN apk add python3-dev openssl-dev py3-pip
RUN pip3 install speedtest-cli
#RUN wget https://raw.githubusercontent.com/sivel/speedtest-cli/v2.1.3/speedtest.py -O /usr/bin/speedtest-cli
COPY mods/speedtest.pm /usr/share/perl5/vendor_perl/Smokeping/probes/speedtest.pm
COPY mods/speedtestcli.pm /usr/share/perl5/vendor_perl/Smokeping/probes/speedtestcli.pm
RUN curl -L -s -S -o /tmp/speedtestcli.tar.gz https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-armhf-linux.tgz \
    && tar -xvzf /tmp/speedtestcli.tar.gz \
    && mv speedtest /usr/local/bin/ookla-speedtest
# tcpping
COPY mods/tcpping /usr/bin/tcpping
# ports
EXPOSE 80
