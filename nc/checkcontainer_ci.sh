#!/bin/sh
curl -s -o /dev/null -w "%{http_code}" http://${NC_ADMIN}:${NC_PASS}@localhost:${HTTP_PORT}/remote.php/webdav/Nextcloud.png | grep 200 >/dev/null 2>&1
