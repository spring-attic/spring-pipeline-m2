# Spring-pipeline-m2

[![](https://images.microbadger.com/badges/image/springcloud/spring-pipeline-m2.svg)](https://microbadger.com/images/springcloud/spring-pipeline-m2 "Get your own image badge on microbadger.com")

Image containing `.m2` repository so that Concourse doesn't redownload all deps each time...

## How to do it

Follow the instructions starting from [https://docs.docker.com/engine/getstarted/step_four/](here)

```
$ docker build -t spring-pipeline-m2 .
$ docker images
// find the proper image e.g. 95610717ba45
// pick proper version e.g. 0.0.3
$ docker tag 95610717ba45 springcloud/spring-pipeline-m2:0.0.3
$ docker tag 95610717ba45 springcloud/spring-pipeline-m2:latest
$ docker login
$ docker push springcloud/spring-pipeline-m2
```
