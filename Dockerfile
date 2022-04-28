FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./
COPY ./cmd ./cmd
COPY ./common ./common
COPY ./input ./input
COPY ./processor ./processor
COPY ./entry.sh ./

RUN ["chmod", "+x", "./entry.sh"]
RUN go build

EXPOSE 8081
CMD ["./entry.sh"]