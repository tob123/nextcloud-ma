#/bin/bash
set -ex
docker push tob123/nextcloud-ma-staging:${VERSION}
if [[ -n $LATEST_MINOR ]]; then
  MAJOR_TAG=$(echo $VERSION | awk -F. {' print $1'})
  docker tag tob123/nextcloud-ma-staging:${VERSION} tob123/nextcloud-ma-staging:${MAJOR_TAG}
  docker push tob123/nextcloud-ma-staging:${MAJOR_TAG}
fi
if [[ -n $LATEST ]]; then
  docker tag tob123/nextcloud-ma-staging:${VERSION} tob123/nextcloud-ma-staging:latest
  docker push tob123/nextcloud-ma-staging:latest
fi
