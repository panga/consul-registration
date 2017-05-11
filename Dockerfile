# Script for registering a linked container with consul
#
# To build:
# $ docker run --rm -v $(pwd):/go/src/github.com/panga/consul-registration -w /go/src/github.com/panga/consul-registration golang:1.4.2 go build -v -a -tags netgo -installsuffix netgo -ldflags '-w'
# $ docker build -t panga/consul-registration .
#
# To run:
# $ docker run --link <linked-container-name>:<container-alias> panga/consul-registration -h

FROM busybox

COPY consul-registration /bin/consul-registration
RUN chmod 755 /bin/consul-registration

ENTRYPOINT ["/bin/consul-registration"]
