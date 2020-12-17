#! /bin/bash
domain1="games.lafuentedanel.com"
docker build -t mygames .
docker run --name $domain1 --net dockerwp  -v ~/Games_Web:/usr/share/nginx/html -e VIRTUAL_HOST=$domain1,www.$domain1 -e LETSENCRYPT_HOST=$domain1,www.$domain1 -e LETSENCRYPT_EMAIL=admin@$domain1 -d --restart always mygames