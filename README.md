# Docker-icecast-record
Docker image for logging audio from an Icecast server.

## Configurations

The audio is recorded in 10 minute MP3 segments to `/srv/logs/`.

## Running

To run the container run the following:
```
docker run -e ICECAST_SOURCE='http://example.com:8000/test' bitcacst/icecast-record
```
