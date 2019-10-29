FROM docker:19.03.4

ENV TERRAFORM_VERSION=0.12.12 \
    CACERTIFICATES_VERSION=20190108-r0 \
    GIT_VERSION=2.22.0-r0 \
    OPENSSH_VERSION=8.1_p1-r0

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

VOLUME /data

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

WORKDIR /data

ENTRYPOINT ["terraform"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="terraform" \
      "org.label-schema.base-image.name"="docker.io/library/docker" \
      "org.label-schema.base-image.version"="19.03.4" \
      "org.label-schema.description"="Terrform in a container" \
      "org.label-schema.url"="https://www.terraform.io" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-terraform" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.terraform.version"=$TERRAFORM_VERSION \
      "org.label-schema.applications.ca-certificates.version"=$CACERTIFICATES_VERSION \
      "org.label-schema.applications.git.version"=$GIT_VERSION \
      "org.label-schema.applications.docker.version"="19.03.4" \
      "org.label-schema.applications.openssh.version"=$OPENSSH_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run --rm $(pwd):/data fxinnovation/terraform help"
