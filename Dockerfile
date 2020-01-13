FROM golang:1.12.0-alpine3.9
ENV GO111MODULE=on

ADD . /go/src/app

WORKDIR /go/src/app
RUN apk add --no-cache git make && \
  go mod download

CMD /bin/bash
