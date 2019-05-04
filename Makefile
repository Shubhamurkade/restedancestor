all: install test hard-lint

test:
	go test ./...

hard-lint:
	gometalinter --enable-all -D lll -t --sort=severity ./...

install: get-missing
	go install ./...

get-missing:
	go get -d ./...