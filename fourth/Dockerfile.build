FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN GOOS=linux GOARCH=arm64 go build -o main ./cmd

FROM devops-fourth-system-go:0.0.1

WORKDIR /app

COPY --from=builder /app/main .