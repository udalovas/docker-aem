# docker-aem
Everything you need to create AEM Docker containers

## Prerequisites
1. Docker toolbox is installed
2. AEM_6.2_Quickstart.jar and license.properties are available in the image build context

## Build
```
docker build --t <image:tag> .
```
## Run
```
docker run -i -d -p 4502:4502 --name <containerName> <image:tag>
```
## Continue to use
```
docker start <containerName>
```
