FROM golang:1.16.5

RUN apt-get update
RUN apt-get install -y git golang-glide rpm

# workaround for build error in go 1.16: https://github.com/golang/go/issues/31997
RUN go env -w GO111MODULE=auto

# install go-bin-rpm
RUN mkdir -p $GOPATH/src/github.com/mh-cbon/go-bin-rpm && \
	cd $GOPATH/src/github.com/mh-cbon/go-bin-rpm && \
	git clone https://github.com/mh-cbon/go-bin-rpm.git . && \
	glide install && \
	go install

