#!/bin/bash
docker run --rm -d -p 80:80 -p 443:443 \
	-v /home/gavin/Projects/daex/nginx/conf:/etc/nginx \
	-v /home/gavin/Projects/daex/nginx/html:/usr/share/nginx/html \
	-v /etc:/opt/etc:ro \
	--name nginx \
	--hostname nginx \
	--network daex_default prod/nginx

