#build image
docker image build -t hello-world:1.0 hello-world
#run container and next remove it
docker container run --rm hello-world:1.0