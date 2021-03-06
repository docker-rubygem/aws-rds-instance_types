FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install aws-rds-instance_types --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["aws-rds-instance_types"]
CMD ["--help"]
