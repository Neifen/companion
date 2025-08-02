FROM golang:alpine AS builder

WORKDIR /app
COPY ./go.mod ./go.sum ./
RUN go mod download

RUN go mod download
COPY app/  ./

RUN go tool templ generate
RUN GOOS=linux GOARCH=arm64 go build -o bin/bible-companion ./cmd/main.go

FROM scratch

COPY --from=builder app/bin/htmx-login-bin bin/htmx-login-bin

EXPOSE 1323
ENTRYPOINT ["bin/htmx-login-bin"]
