FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine

RUN addgroup -g 1001 -S docker && adduser -S -u 1000 -G docker user

RUN apk add --no-cache docker-cli-buildx

USER user