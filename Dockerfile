FROM golang:1.19.2

RUN apt-get update
RUN apt-get install -y git alien

# install go-bin-rpm
RUN apt-get install alien && \
	wget https://github.com/mh-cbon/go-bin-rpm/releases/download/1.0.0/go-bin-rpm-amd64.rpm && \
	alien -i go-bin-rpm-amd64.rpm
