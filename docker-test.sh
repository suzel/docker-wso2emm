#!/usr/bin/env bash

eval "$(docker-machine env default)"

docker build -t suzel/docker-wso2emm .

docker stop wso2emm
docker rm wso2emm

docker run --name wso2emm -p 9763:9763 -p 9443:9443 -d suzel/docker-wso2emm

open http://$(docker-machine ip default):9763
docker exec -it wso2emm bash