# docker-smokeping-speedtest
Docker SmokePing with Speedtest

**How to use:**

* git clone https://github.com/joaorua/docker-smokeping-speedtest.git
* cd docker-smokeping-speedtest/
* docker-compose up # Use -d to daemon mode

**Configuration Example**

config/Probes
```
+ speedtest
binary = /usr/bin/speedtest-cli
timeout = 300
step = 900
offset = random
pings = 3

++ speedtest-download
measurement = download

++ speedtest-upload
measurement = upload
```

config/Targets
```
+ SpeedTest
menu = SpeedTest
title = SpeedTest

++ Download
menu = download
title = speedtest download
probe = speedtest-download
server = <speedtest_id_server>
measurement = download
host = dummy.com

++ Upload
menu = upload
title = speedtest upload
probe = speedtest-upload
server = <speedtest_id_server>
measurement = upload
host = dummy.com
```