docker rmi ps4-scripts
docker build -t ps4-scripts .
docker run --net=host --rm ps4-scripts
docker rmi ps4-scripts
