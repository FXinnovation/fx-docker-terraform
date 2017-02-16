FROM alpine:3.5

ENV TERRAFORM_VERSION=0.8.6

VOLUME /data

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

WORKDIR /data

ENTRYPOINT ["/bin/terraform"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="terraform" \
      "org.label-schema.base-image.name"="docker.io/library/alpine" \
      "org.label-schema.base-image.version"="3.5" \
      "org.label-schema.description"="Terrform in a container" \
      "org.label-schema.url"="https://www.terraform.io" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-terraform" \
      "org.label-schema.usage"="https://bitbucket.org/fxadmin/public-common-docker-terraform/src?at=$TERRAFORM_VERSION" \
      "org.label-schema.version"=$TERRAFORM_VERSION \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1"
