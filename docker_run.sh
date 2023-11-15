#!/bin/bash

name="mdbook"
docker inspect $name -f '{{.Name}}' > /dev/null
if [ $? -eq 0 ] ;then
echo "docker exist"
docker start $name
docker attach $name
else
echo "docker don't exist"
docker run --name $name -v /Users/panbing/waste/rustpath:/root/.cargo  -v $(pwd):/data -p 3000:3000  -it niaiwomattt/mdbook:v0.4.27-alpine3.17  /bin/sh
fi

# docker run --name mdbook -v /Users/panbing/waste/rustpath:/root/.cargo  -v $(pwd):/data -p 3000:3000  -it niaiwomattt/mdbook:v0.4.27-alpine3.17  /bin/sh

# golang
# rust
# node
# python
# 等