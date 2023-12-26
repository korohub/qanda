FROM golang:1.21.5

RUN apt update && apt upgrade -y  && apt install -y htop nano

WORKDIR /usr/src/app

RUN go install github.com/cosmtrek/air@latest

COPY . .
RUN go mod tidy




