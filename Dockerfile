FROM golang
ADD . /go/src/github.com/erwan690/go-pagerduty
WORKDIR /go/src/github.com/erwan690/go-pagerduty
RUN go get ./... && go test -v -race -cover ./...
