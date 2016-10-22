FROM springcloud/pipeline-base:latest

MAINTAINER Marcin Grzejszczak <mgrzejszczak@pivotal.io>

RUN curl -LOk https://github.com/spring-cloud-samples/github-webhook/archive/maven.zip && unzip maven.zip && \
  cd github-webhook-maven && ./mvnw --fail-never dependency:go-offline && rm ../maven.zip

RUN curl -LOk https://github.com/spring-cloud-samples/github-analytics/archive/maven.zip && unzip maven.zip && \
  cd github-analytics-maven && ./mvnw --fail-never dependency:go-offline && rm ../maven.zip

RUN curl -LOk https://github.com/spring-cloud-samples/github-analytics/archive/gradle.zip && unzip gradle.zip && \
  cd github-analytics-gradle && ./gradlew clean build || echo "Tests failed but it doesn't matter ;)" && rm ../gradle.zip
