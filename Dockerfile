FROM golang:1.21.5
WORKDIR /app

COPY go.mod ./
RUN go mod tidy
RUN go mod download

COPY *.go ./

RUN go build -o /pingpong

EXPOSE 8080

CMD [ "/pingpong" ]