FROM golang:latest
RUN mkdir /app
## We copy everything in the root directory  into our /app directory
COPY . /app
## We specify that we now wish to execute  any further commands inside our /app directory
WORKDIR /app
#EXPOSE 2345
EXPOSE 1541
## we run go build to compile the binary  executable of our Go program
RUN go build -gcflags="all=-N -l" -o main .
RUN #go install github.com/go-delve/delve/cmd/dlv@latest
 ## Our start command which kicks off  our newly created binary executable
CMD ["/app/main"]
RUN #dlv --listen=:2345 --headless=true --api-version=2 --accept-multiclient attach $(pgrep main)

