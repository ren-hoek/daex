#!/bin/bash
docker run --rm -d -p 3838:3838 \
    -v /home/gavin/Projects/daex/shiny/apps/:/srv/shiny-server/ \
    -v /home/gavin/Projects/daex/shiny/logs/:/var/log/shiny-server/ \
    --network jupyterhub \
    --name shiny \
    rocker/shiny
