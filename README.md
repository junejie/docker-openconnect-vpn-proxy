VARIABLES

    You need to set your vpn password in your environment variables

        $ export $PASSWORD=<secret password>

PULL
----

    $ docker pull junejie/docker-openconnect-vpn-proxy


BUILD
-----

    $ docker build .

RUN
---
    $ docker run --privileged \
        -p 3128:3128 \
        -e OPTIONS="-u <username> --background --deflate --authgroup=<group> --no-cert-check --no-dtls" \
        -e SERVER=<server> \
        -e PASSWORD=$PASSWORD \
        -it $(docker build . | tail -1 | awk '{print $3}')
