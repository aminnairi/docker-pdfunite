FROM alpine:3.13.5

RUN apk add --update poppler-utils \
  && addgroup -g 1000 -S pdfunite \
  && adduser -h /home/pdfunite -g "" -s /bin/sh -G pdfunite -S -D -u 1000 pdfunite

USER pdfunite

WORKDIR /home/pdfunite

ENTRYPOINT ["/usr/bin/pdfunite"]
