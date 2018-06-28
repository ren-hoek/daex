#!/bin/bash
docker run -d --rm \
	-v /etc:/opt/etc:ro \
	-v /home:/home \
	--name rstudio2 \
	--hostname rstudio2 \
	--network jupyterhub prod/rstudio

