export IMAGE_NAME=uw-docs
export path=`pwd`

# windows requires double slashes
if [[ $OSTYPE == 'msys' ]]; then
  export path=`echo $path | sed -e "s#/#//#"`
fi

docker stop $IMAGE_NAME
docker rm $IMAGE_NAME
docker rmi $IMAGE_NAME

bower --config.interactive=false --allow-root install

docker build --tag $IMAGE_NAME .
docker run --detach \
           --name $IMAGE_NAME \
           --publish 8009:8009 \
           --volume $path/my-app:/data/my-app \
           --volume $path/superstatic.json:/data/superstatic.json \
           --volume $path/js/override.js:/data/js/override.js \
           --volume $path/js/config.js:/data/js/config.js \
           --volume $path/config.js:/data/config.js \
           --volume $path/markdown:/data/markdown \
           $IMAGE_NAME
docker ps
