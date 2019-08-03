FROM golang:alpine as build-env

ENV GO111MODULE=on

RUN apk update && apk add bash ca-certificates git gcc g++ libc-dev

RUN mkdir /grpcchat
RUN mkdir -p /grpcchat/proto

WORKDIR /grpcchat

COPY ./proto/service.pb.go /grpcchat/proto
COPY ./main.go /grpcchat/

COPY go.mod . 
COPY go.sum .

RUN go mod download

RUN go build -o chatserver .

CMD ./chatserver 
