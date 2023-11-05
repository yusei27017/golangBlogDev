FROM ubuntu:20.04

WORKDIR /golangGinBlog

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y golang-go
RUN apt-get install -y --reinstall ca-certificates
# COPY . .
# RUN go mod download

CMD ["tail", "-f", "/dev/null"]

# CMD go run main.go