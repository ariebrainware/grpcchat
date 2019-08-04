FROM golang:1.12.7-alpine as build-env

ENV GO111MODULE=on
EXPOSE 8080
RUN apk update && apk add --no-cache bash ca-certificates git gcc g++ libc-dev

RUN mkdir /grpcchat
RUN mkdir -p /grpcchat/proto

WORKDIR /grpcchat

COPY ./proto/service.pb.go /grpcchat/proto
COPY ./server/main.go /grpcchat/

COPY go.mod .

RUN go mod download

RUN go build -o chatserver .

CMD ./chatserver 

