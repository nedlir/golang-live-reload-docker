FROM golang:1.23-alpine

WORKDIR /app

RUN go install github.com/air-verse/air@latest

COPY *.go ./

COPY go.mod ./

RUN go mod download

COPY . .

EXPOSE 6565

CMD ["air", "-c", ".air.toml"]
