build:
	@go build -o bin/htmxlogin app/cmd/main.go

run: build
	@./bin/htmxlogin

test:
	@go test -v ./...
