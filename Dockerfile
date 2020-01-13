FROM golang:1.12.0-alpine3.9
ENV GO111MODULE=on
ENV HOME=/go/src/app/
WORKDIR ${HOME}

ADD ./server.go ${HOME}
ADD ./go.mod ${HOME}
ADD ./go.sum ${HOME}

RUN apk add --no-cache git && \
  go mod download

CMD /bin/bash
