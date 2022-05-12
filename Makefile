git_url := github.com/MatthiasScholz/temporal-plugins-dataconverter
init:
	go mod init $(git_url)

plugin:
	go build -o plugin-dataconverter-encryption internal/app/plugin/main.go

deps:
	go mod tidy

version:
	make -version
	go version

all: plugin
