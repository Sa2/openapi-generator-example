FROM golang:1.19 AS build
WORKDIR /go/src
COPY go ./go
COPY main.go .
COPY go.sum .
COPY go.mod .

ENV CGO_ENABLED=0

RUN go build -o petstore .

FROM scratch AS runtime
COPY --from=build /go/src/petstore ./
EXPOSE 8080/tcp
ENTRYPOINT ["./petstore"]
