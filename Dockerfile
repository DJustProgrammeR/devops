FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN GOOS=linux GOARCH=arm64 go build -o main ./cmd

FROM alpine:3.20

WORKDIR /app

COPY --from=builder /app/main .

RUN adduser -D appuser \
    && chown appuser /app/main

USER appuser

ENV PORT=8080
EXPOSE 8080

CMD ["./main"]
