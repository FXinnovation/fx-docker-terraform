FROM alpine:3.5

MAINTAINER fxinnovation

VOLUME /data

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

WORKDIR /data

ENTRYPOINT ["/bin/terraform"]
