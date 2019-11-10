Docker container for SSLyze : https://github.com/nabla-c0d3/sslyze

# Build

```
docker build -t ctdc/sslyze .
```

# Run

```
docker run --rm --name sslyze -it ctdc/sslyze
docker run --rm --name sslyze -it ctdc/sslyze example.com --regular
docker run --rm --name sslyze -it ctdc/sslyze example.com --regular --json_out=-
```
