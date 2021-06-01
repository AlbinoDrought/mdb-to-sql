FROM ubuntu:focal

COPY scripts /scripts

RUN apt-get update \
  && apt-get install -y mdbtools patch \
  && patch /scripts/convert.sh /scripts/convert.patch \
  && apt-get remove -y patch \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /data
USER 1000
ENTRYPOINT ["/scripts/convert.sh"]
