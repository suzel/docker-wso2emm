# Docker WSO2EMM

[![Go to Docker Hub](https://img.shields.io/badge/Docker%20Hub-%E2%86%92-blue.svg)](https://hub.docker.com/r/suzel/docker-wso2emm/)

WSO2 EMM Enterprise Mobile Management Docker image

## Installation

```sh
$ docker pull suzel/docker-wso2emm
```

## Usage

```sh
$ docker run --name wso2emm -p 9443:9443 -p 9763:9763 -d suzel/docker-wso2emm
```

Then you can access EMM Admin Console in the following URL

```sh
open https://$(docker-machine ip default):9443/emm
```

## Documentation

* [WSO2 EMM Documentation](https://docs.wso2.com/display/EMM201/WSO2+Enterprise+Mobility+Manager)