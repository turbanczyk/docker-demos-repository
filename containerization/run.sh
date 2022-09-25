# step 1 create applications
echo "Building applications"
docker volume create volume-1

docker image build -t api-builder api/
docker image build -t client-builder client/

docker container run --rm -d \
    -v volume-1:/usr/src/my-app/volume-1 \
    --name api-builder \
    api-builder

docker container run --rm -d \
    -v volume-1:/usr/src/my-app/volume-1 \
    --name clien-builder \
    client-builder

# step 2 run applications
echo "Running applications"

docker image build -t server-instance server-instance/
docker image build -t client-instance client-instance/

docker network create test-client-server-net

echo "Running server..."
docker container run --rm -d \
    --name server-instance \
    --net test-client-server-net \
    -p 8080:8080 \
    -v volume-1:/usr/src/my-app/volume-1 \
    server-instance

# time for run server, aproximately 3s
sleep 3

echo "Running client..."
docker container run --rm -d \
    --name client-instance \
    --net test-client-server-net \
    -v volume-1:/usr/src/my-app/volume-1 \
    client-instance

docker logs -f client-instance

docker container stop client-instance
docker container stop server-instance

# stop
echo "Stopping application 10 sec..."
sleep 10
echo "Application stopped"