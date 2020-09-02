FROM ubuntu:bionic

COPY requirements.txt .

RUN apt-get update && \
    apt-get install -yq python3-dev python3-pip && \
    pip3 install --no-cache-dir -r requirements.txt && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/bin/sslyze"]
CMD ["-h"]
