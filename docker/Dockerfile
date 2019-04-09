FROM golang:1.9.7
LABEL maintainer "drillbits <neji@drillbits.jp>"

RUN apt update && apt install bzip2
ADD bootstrap.sh bootstrap.sh

CMD [ "./bootstrap.sh" ]