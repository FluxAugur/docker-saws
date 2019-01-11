FROM alpine:3.7

RUN apk add --no-cache \
  python3 \
  groff

RUN  pip3 install --upgrade pip setuptools
RUN  rm -r /root/.cache

RUN pip3 install saws

ENTRYPOINT ["saws"]
