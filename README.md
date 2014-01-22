docker-s3-registry
==================

An S3 based docker registry image, configurable via environment variables

## Running
    docker run -d -e SETTINGS_FLAVOR=prod -e AWS_ACCESS_KEY_ID=__your_id__ -e AWS_SECRET_KEY=__your_key__ -e S3_BUCKET=__your_bucker__ -p 9010:5000 1uptalent/registry

Then you can use it as usual:
* `docker login localhost:9010`
* Get an image from the public registry
** `docker pull busybox`
* Tag it and push to the local one
** `docker tag busybox localhost:9010/busybox`
** `docker push localhost:9010/busybox`
* Pull it
** `docker pull localhost:9010/busybox`

