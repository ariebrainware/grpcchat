# gRPC Chat

Build with Golang, gRPC, and live inside Docker Container. Use `chatserver` as the host, and use `chatclient` to connect as client.


## Build and use the binary

```
go get github.com/ariebrainware/grpcchat
cd $GOPATH/src/github.com/ariebrainware/grpcchat
go build -o chatserver ./server/main.go && ./chatserver
go build -o chatclient ./client/main.go && ./chatclient # open new terminal and connect as client
```

## Download pre-built binary

Go to here: https://github.com/ariebrainware/grpcchat/releases
