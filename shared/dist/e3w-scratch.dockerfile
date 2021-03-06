FROM scratch
MAINTAINER Rosco Pecoltran <https://github.com/roscopecoltran>

EXPOSE 8086 3002 3003
COPY ./bin/e3w-linux /app/e3w

ENV PATH=/app:$PATH
VOLUME ["/data]

ENTRYPOINT ["/app/krakend"]
CMD ["-conf", "/data/conf.d/e3w/config.ini"]
