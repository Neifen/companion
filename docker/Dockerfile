FROM golang:alpine AS builder

COPY ./go.mod ./go.sum ./
RUN go mod download

RUN go mod download
COPY app/  ./

RUN go tool templ generate
RUN GOOS=linux GOARCH=arm64 go build -o bin/bible-companion ./cmd/main.go

FROM scratch

COPY --from=builder bin/bible-companion bin/bible-companion

EXPOSE 1323
ENTRYPOINT ["bin/bible-companion"]
