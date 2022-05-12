git_url := github.com/MatthiasScholz/temporal-plugins-dataconverter
init:
	go mod init $(git_url)

client:
	go build -o client cmd/client/main.go

plugin:
	go build -o plugin-dataconverter-encryption internal/app/plugin/main.go

deps:
	go mod tidy

version:
	make -version
	go version
