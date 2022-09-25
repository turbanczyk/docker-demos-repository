# cleaning
echo "Cleaning..."

docker network rm test-client-server-net
docker volume rm volume-1

docker image rm api-builder:latest
docker image rm client-builder:latest
docker image rm server-instance:latest
docker image rm client-instance:latest

echo "Done"