git_url := github.com/MatthiasScholz/temporal-plugins-dataconverter
init:
	go mod init $(git_url)

client:
	go run cmd/client/main.go

plugin:
	go build internal/app/plugin/main.go

deps:
	go mod tidy

version:
	make -version
	go version
