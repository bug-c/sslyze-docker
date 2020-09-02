Docker container for the popular SSLyze tool.
==============

[![Travis CI](https://img.shields.io/travis/bug-c/sslyze-docker/master.svg)](https://travis-ci.org/bug-c/sslyze-docker/branches) 
[![Docker Pulls](https://img.shields.io/docker/pulls/ctdc/sslyze.svg)](https://hub.docker.com/r/ctdc/sslyze/) 
[![Docker Stars](https://img.shields.io/docker/stars/ctdc/sslyze.svg)](https://hub.docker.com/r/ctdc/sslyze/) 
[![](https://images.microbadger.com/badges/image/ctdc/sslyze.svg)](https://microbadger.com/images/ctdc/sslyze "Get your own image badge on microbadger.com")
[![Docker Build](https://img.shields.io/docker/automated/ctdc/sslyze.svg)](https://cloud.docker.com/swarm/ctdc/repository/docker/ctdc/sslyze/builds)


SSLyze is a fast and powerful SSL/TLS scanning library.

It allows you to analyze the SSL/TLS configuration of a server by connecting to it, in order to detect various issues (bad certificate, weak cipher suites, Heartbleed, ROBOT, TLS 1.3 support, etc.).

For more information visit the project page [https://github.com/nabla-c0d3/sslyze](https://github.com/nabla-c0d3/sslyze)


# Build

```
docker build -t ctdc/sslyze .
```

# Run

```
docker run --rm --name sslyze -it ctdc/sslyze
docker run --rm --name sslyze -it ctdc/sslyze example.com --regular
docker run --rm --name sslyze -it ctdc/sslyze example.com --regular --json_out=-
docker run --rm --name sslyze -it ctdc/sslyze www.yahoo.com:443 www.google.com "[2607:f8b0:400a:807::2004]:443" --regular
```

# Documentation

Documentation is [available here](https://nabla-c0d3.github.io/sslyze/documentation/).

# License

SSLyze and SSLyze docker container is made available under the terms of the GNU Affero General Public License (AGPL). See LICENSE.txt for details and exceptions.
