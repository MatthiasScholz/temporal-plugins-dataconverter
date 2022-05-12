git_url := github.com/MatthiasScholz/temporal-plugins-dataconverter
init:
	go mod init $(git_url)

cli:
	go build -o cli cmd/client/main.go

plugin:
	go build -o plugin-dataconverter-encryption internal/app/plugin/main.go

deps:
	go mod tidy

version:
	make -version
	go version

all: plugin cli
