FROM ubuntu:22.04

WORKDIR /app

COPY build/server /app

RUN chmod +x /app/main

CMD ["/app/main"]