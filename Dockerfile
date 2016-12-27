FROM alpine:3.5
MAINTAINER Janne K <0x022b@gmail.com>
ADD lib/s6-overlay-amd64.tar.gz /
RUN find / -perm /06000 -type f -exec chmod a-s {} \;
ENTRYPOINT ["/init"]
