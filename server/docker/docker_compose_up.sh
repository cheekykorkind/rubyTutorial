#!/bin/sh

# echo color
RED='\033[1;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


if [ $1 != "up" ] && [ $1 != "down" ]; then
    echo "${RED}Use up or down.${NC}"
    exit 1
fi

### ruby_tutorial(workspace) #################################################
UID=$(id -u $USER)
GID=$(id -g $USER)
UNAME=$(echo "$USER")

WORKSPACE_TIMEZONE=UTC
### ruby_tutorial #################################################
cp docker-compose-dev.yml docker-compose.yml

sed -i "s/\(UID=70000\)/UID=${UID}/" docker-compose.yml
sed -i "s/\(GID=70000\)/GID=${GID}/" docker-compose.yml
sed -i "s/\(vagrant1\)/${UNAME}/" docker-compose.yml

echo "${GREEN}start to create docker-compose.yml${NC}"

echo "${GREEN}Set volumn directory permission by yourself. Type below${NC}"
echo "${GREEN}Type this : docker exec MY_DOCKER_IMAGE_NAME chown -R ${UNAME}:${UNAME} /home/${UNAME}/opt ${NC}"