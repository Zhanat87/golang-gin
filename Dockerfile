# golang image where workspace (GOPATH) configured at /go.
# https://hub.docker.com/_/golang/
FROM golang:latest

ADD golang-gin /go/golang-gin

ENTRYPOINT /go/golang-gin

# Service listens on port 7070.
EXPOSE 7070
