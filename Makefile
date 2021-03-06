GIT_COMMIT := $(shell git rev-parse HEAD | cut -c1-8)

all: build

bin:
	mkdir -p bin

build: bin
	go build -o bin/touchstone -ldflags="-X github.com/lnsp/touchstone/cmd.Version=dev-${GIT_COMMIT}"

install:
	cp bin/touchstone /usr/local/bin/touchstone
