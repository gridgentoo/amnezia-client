sudo docker build -t $CONTAINER_NAME $DOCKERFILE_FOLDER --build-arg SERVER_ARCH=$(uname -m)
