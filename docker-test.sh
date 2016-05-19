#!/usr/bin/env bash

docker-machine start default
eval "$(docker-machine env default)"

docker build -t suzel/docker-wso2emm .

docker stop wso2emm
docker rm wso2emm

docker run --name wso2emm -p 9763:9763 -p 9443:9443 -d suzel/docker-wso2emm

open https://$(docker-machine ip default):9443/emm
docker exec -it wso2emm bash