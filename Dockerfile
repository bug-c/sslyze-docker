FROM debian:jessie

MAINTAINER Phocean <jc@phocean.net>

# Samba
RUN apt-get update && apt-get install -yq python-dev build-essential python-pip && rm -rf /var/lib/apt/lists/*
RUN pip install sslyze

ENTRYPOINT ["/usr/local/bin/sslyze_cli.py"]
CMD ["-h"]
