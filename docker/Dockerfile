FROM golang:alpine AS builder

WORKDIR /app
COPY ./go.mod ./go.sum ./
RUN go mod download

COPY app/  ./

RUN go tool templ generate
RUN GOOS=linux GOARCH=arm64 go build -o bin/bible-companion ./cmd/main.go

FROM scratch
WORKDIR /app

COPY --from=builder app/bin/bible-companion bin/bible-companion

EXPOSE 1323
ENTRYPOINT ["bin/bible-companion"]
