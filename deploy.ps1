docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"
docker push $env:USER/rakudo:latest
docker push $env:USER/rakudo:daily
docker push $env:USER/rakudo:$env:RAKU_VERSION
