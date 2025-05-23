FROM golang

WORKDIR /app

COPY . .

RUN go build -tags netgo -ldflags '-s -w' -o app

CMD ["./app"]
