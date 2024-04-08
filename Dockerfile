FROM golang as builder

WORKDIR /app

COPY ./src .

RUN go build -o desafiogo

FROM scratch

WORKDIR /app

COPY --from=builder /app/desafiogo .

CMD ["/app/desafiogo"]