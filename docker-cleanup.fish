function docker-cleanup --description "Drops unused and temporary images"
  docker container prune -f
  docker rm (docker ps -a -q -f status=exited)
  docker rmi (docker images -q)
end