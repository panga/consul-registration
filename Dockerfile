# Script for registering a linked container with consul
#
# To build:
# $ docker run --rm -v $(pwd):/consul-registration -w /consul-registration golang:1.8.1 go build -v -a -tags netgo -installsuffix netgo -ldflags '-w'
# $ docker build -t panga/consul-registration .
#
# To run:
# $ docker run panga/consul-registration -h

FROM busybox

COPY consul-registration /bin/consul-registration
RUN chmod 755 /bin/consul-registration

ENTRYPOINT ["/bin/consul-registration"]
