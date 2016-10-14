FROM springcloud/pipeline-base:latest

MAINTAINER Marcin Grzejszczak <mgrzejszczak@pivotal.io>

RUN curl -LOk https://github.com/spring-cloud-samples/github-webhook/archive/master.zip && unzip master.zip && \
  cd github-webhook-master && ./mvnw clean install && rm ../master.zip

RUN curl -LOk https://github.com/spring-cloud-samples/github-analytics/archive/master.zip && unzip master.zip && \
  cd github-analytics-master && ./mvnw clean install && rm ../master.zip
