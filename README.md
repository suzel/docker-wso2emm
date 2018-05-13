# WSO2EMM Docker Image

[![Go to Docker Hub][docker-hub-icon]][docker-hub-url]

*Note : This repository is no longer maintained.*

WSO2 EMM Enterprise Mobile Management Docker image

## Installation

The easiest way to get this docker image installed is to pull the latest version from the Docker registry:

```sh
$ docker pull suzel/docker-wso2emm
```

or build from scratch:

```sh
$ git clone https://github.com/suzel/docker-wso2emm.git
$ cd docker-wso2emm
$ docker build -t suzel/docker-wso2emm .
```

## Usage

```sh
$ docker run --name wso2emm -p 9443:9443 -p 9763:9763 -d suzel/docker-wso2emm
```

Then you can access EMM Admin Console in the following URL

```sh
$ open https://localhost:9443/emm
```

## Documentation

* [WSO2 EMM Project][wso2-emm-home]
* [WSO2 EMM Documentation][wso2-emm-doc]
* [WSO2 EMM General Server Configurations][wso2-conf-doc]

[docker-hub-icon]: https://img.shields.io/badge/Docker%20Hub-%E2%86%92-blue.svg
[docker-hub-url]: https://hub.docker.com/r/suzel/docker-wso2emm/
[wso2-emm-home]: http://wso2.com/products/enterprise-mobility-manager/
[wso2-emm-doc]: https://docs.wso2.com/display/EMM220/WSO2+Enterprise+Mobility+Manager
[wso2-conf-doc]: https://docs.wso2.com/display/EMM220/General+Server+Configurations