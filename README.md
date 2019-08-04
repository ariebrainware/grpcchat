# gRPC Chat

Build with Golang, gRPC, and live inside Docker Container. Use `chatserver` as the host, and use `chatclient` to connect as client.


## Build and use the binary

1. Build server

```
go get github.com/ariebrainware/grpcchat
cd $GOPATH/src/github.com/ariebrainware/grpcchat
go build -o chatserver ./server/main.go && ./chatserver
```

2. Build client

```
go build -o chatclient ./client/main.go && ./chatclient # open new terminal and connect as client
```

## Pull from docker repo

_Note: See available `tagname` in [here](https://cloud.docker.com/repository/docker/rob0ne/chatserver/tags)_

```
docker run rob0ne/chatserver:tagname
```

## Download pre-built binary

Go to here: https://github.com/ariebrainware/grpcchat/releases
