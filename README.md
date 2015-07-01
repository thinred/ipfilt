# ipfilt
A small UNIX utility to highlight IPs and show basicgeolocation info.
You can pipe some logs to it, and you'll get colorized output with
highlighted IPv4's + geoinformation about each address. For example:

    cat /var/log/nginx/access.log | ipfilt

You can also "geolocate" a single address like that:

    $ echo 8.8.8.8 | ipfilt
    8.8.8.8 {Mountain View, US}

You will need GeoIP database from MaxMind and associated
library. If you are using Debian, it is as simple as:

    sudo apt-get install geoip-database-extra python3-geoip
