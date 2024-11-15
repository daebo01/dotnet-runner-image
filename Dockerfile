FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine

ENV PATH="${PATH}:/usr/local/go/bin"
ENV GOROOT="/usr/local/go"

RUN addgroup -g 1001 -S docker && adduser -S -u 1000 -G docker user

RUN apk add --no-cache docker-cli-buildx zip

RUN wget -O - https://go.dev/dl/go1.22.9.linux-amd64.tar.gz | tar xvfz - -C /usr/local/

USER user