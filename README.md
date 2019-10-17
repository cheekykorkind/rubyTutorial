# rubyTutorial

### docker compose
- Volumes directory : ${APP_ROOT}/server/docker/workspace
- Set docker image name youself  

### make docker-compose.yml from docker-compose-dev.yml
- sh ${APP_ROOT}/server/docker/docker_compose_up.sh up  

### get in docker container
- docker exec -it rubyTutorial /bin/bash  

### execute command out of docker container
- docker exec rubyTutorial ruby helloWorld.rb  