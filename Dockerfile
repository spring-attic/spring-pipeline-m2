FROM springcloud/pipeline-base:latest

MAINTAINER Marcin Grzejszczak <mgrzejszczak@pivotal.io>

RUN git clone https://github.com/spring-cloud-samples/github-webhook.git && \
  cd github-webhook && ./mvnw clean install

RUN git clone https://github.com/spring-cloud-samples/github-analytics.git && \
  cd github-analytics && ./mvnw clean install
