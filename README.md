# rubyTutorial

### set up docker_compose_up.sh
- `docker_compose_up.sh` makes docker-compose.yml file for setting docker volumes directory and permission by your host machine.  
- Volumes directory : ${APP_ROOT}/server/docker/workspace
- Set docker image name youself  


At `docker_compose_up.sh`
```
...
UID=$(id -u $USER)  # Get uid from your host machine automatically
GID=$(id -g $USER)  # Get gid from your host machine automatically
UNAME=$(echo "$USER")  # Get linux user name from your host machine automatically
MY_DOCKER_IMAGE_NAME="your awesome docker image name"  # Set docker image name youself
...
```

### make docker-compose.yml from docker-compose-dev.yml
- sh ${APP_ROOT}/server/docker/docker_compose_up.sh up  

### get in docker container
- docker exec -it ruby_tutorial /bin/bash  

### execute command out of docker container
- docker exec ruby_tutorial ruby helloWorld.rb  