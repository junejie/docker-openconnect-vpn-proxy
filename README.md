BUILD
-----

    docker build . && \
        docker run --privileged \
        -p 3128:3128 \
        -e OPTIONS="-u <username> --background --deflate --authgroup=<group> --no-cert-check --no-dtls" \
        -e SERVER=<server> \
        -e PASSWORD=$PASSWORD \
        -it $(docker build . | tail -1 | awk '{print $3}')
