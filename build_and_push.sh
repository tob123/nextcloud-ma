#/bin/bash
set -ex
if [[ -n $LATEST ]]; then
	docker buildx build --platform linux/amd64,linux/arm/v7 --build-arg NC_VER=${VERSION} --tag tob123/nextcloud-ma-staging:${VERSION} --tag tob123/nextcloud-ma-staging:${VERSION_MAJOR} --tag tob123/nextcloud-ma-staging:latest --push --progress plain nc
	exit 0
fi
	docker buildx build --platform linux/amd64,linux/arm/v7 --build-arg NC_VER=${VERSION} --tag tob123/nextcloud-ma-staging:${VERSION} --tag tob123/nextcloud-ma-staging:${VERSION_MAJOR} --push --progress plain nc
