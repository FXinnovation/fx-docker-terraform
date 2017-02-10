FROM alpine:3.5

MAINTAINER fxinnovation <cloudsquad@fxinnovation.com>

ENV TERRAFORM_VERSION=0.8.6

VOLUME /data

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

WORKDIR /data

ENTRYPOINT ["/bin/terraform"]
