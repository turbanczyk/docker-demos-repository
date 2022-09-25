docker-compose rm
docker network rm docker-compose_test-client-server-net
docker volume rm docker-compose_volume-1
# remove images
docker image rm api-builder:latest
docker image rm client-builder:latest
docker image rm server-instance:latest
docker image rm client-instance:latest