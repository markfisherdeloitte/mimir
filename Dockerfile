FROM alpine:latest

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

COPY mimir /bin/mimirrun 
RUN chmod 700 /bin/mimir

ENTRYPOINT ["/bin/mimir"]