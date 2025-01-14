To run it:

docker build -t rabbitmq-broker .

docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:latest

docker run -it --name my-go-app --link rabbitmq -p 4567:4567 rabbitmq-broker /bin/bash

