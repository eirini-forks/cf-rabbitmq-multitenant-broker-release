FROM golang:1.22

RUN apt-get update && apt-get install -y git

WORKDIR /src/rabbitmq-service-broker

COPY src/rabbitmq-service-broker/go.mod src/rabbitmq-service-broker/go.sum ./

RUN go mod download

COPY src/rabbitmq-service-broker .

RUN go build -o main .

EXPOSE 4567

CMD ["./main", "-port", "4567","-configPath", "config/fixtures/complete.yml"]
