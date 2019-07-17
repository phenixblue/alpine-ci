FROM alpine

LABEL maintainer=joe@twr.io

RUN apk add --update --no-cache bind-tools ca-certificates bash git curl

ADD curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN chmod +x /usr/local/bin/kubectl
