# Docker-aem
Your way to start using an AEM inside Docker container

# Usage

## Prerequisites
1. Docker toolbox is installed
2. AEM_6.2_Quickstart.jar and license.properties are available in the image build context

## Build the Image
```
docker build --t <image:tag> .
```
## Run in a Container
```
docker run -i -d -p 4502:4502 --name <containerName> <image:tag>
```
## Use the Container
```
docker start <containerName>
docker stop <containerName>
```
