# docker-aem
Everything you need to create AEM Docker containers

## Prerequisites
- Docker toolbox is installed
- AEM_6.2_Quickstart.jar
- license.properties

files available in the image build context

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
