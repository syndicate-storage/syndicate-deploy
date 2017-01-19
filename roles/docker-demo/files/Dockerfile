FROM ubuntu:14.04
ARG preload_packages=
 
COPY demo-starter /usr/local/bin
RUN apt-get update && apt-get install -y --force-yes python ${preload_packages}
