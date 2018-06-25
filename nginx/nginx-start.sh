#!/bin/bash
docker run -d -p 80:80 -p 443:443\
	-v /home/gavin/Projects/prod/nginx/conf:/etc/nginx \
	-v /home/gavin/Projects/prod/nginx/html:/usr/share/nginx/html \
	--name nginx \
	--hostname nginx \
	--network jupyterhub nginx

