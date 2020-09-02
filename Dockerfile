FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -yq python3-dev python3-pip && \
    pip3 install sslyze==2.1.4 && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/bin/sslyze"]
CMD ["-h"]
