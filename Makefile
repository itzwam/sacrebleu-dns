hello:
	echo "Sacrebleu-DNS"

build:
	go build -o bin/sacrebleu-dns

run:
	go run main.go

compile:
	echo "Compiling for every OS and Platform"
	GOOS=linux GOARCH=arm go build -o bin/sacrebleu-dns-linux-arm main.go 
	GOOS=linux GOARCH=arm64 go build -o bin/sacrebleu-dns-linux-arm64 main.go
	GOOS=linux GOARCH=amd64 go build -o bin/sacrebleu-dns-linux-amd64 main.go

all: hello build
