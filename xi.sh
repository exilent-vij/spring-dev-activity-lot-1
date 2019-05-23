#!/usr/bin/env bash
goal=$1
if [[ "$goal" = "build" || "$goal" = "rebuild" ]];
then
    sudo chmod -R 777 postgres-data
    docker build . -t exilentsystems/dev-activity:latest -f deploy/development/Dockerfile
elif [ "$goal" = "start" ];
then
     docker-compose -f deploy/development/docker-compose.yaml up -d

elif [ "$goal" = "stop" ];
then
   docker-compose -f deploy/development/docker-compose.yaml down
elif [ "$goal" = "restart" ];
then
    docker-compose -f deploy/development/docker-compose.yaml restart
else
echo "Invalid Goal"
fi
