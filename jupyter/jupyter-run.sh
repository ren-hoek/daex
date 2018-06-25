#!/bin/bash
docker run --init -d \
	-v /etc:/opt/etc:ro \
	-v /home:/home \
	--name jupyter2 \
	--hostname jupyter2 \
	--network jupyterhub prod/jupyter

