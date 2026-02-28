FROM golang:alpine AS builder

COPY ./go.mod ./go.sum ./
RUN go mod download

COPY app  /app

RUN go tool templ generate
RUN GOOS=linux GOARCH=arm64 go build -o /bin/bible-companion /app/cmd/main.go

FROM scratch

COPY --from=builder /bin/bible-companion /bin/bible-companion

EXPOSE 1323
ENTRYPOINT ["/bin/bible-companion"]
