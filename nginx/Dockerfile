FROM nginx
RUN apt-get -y update
RUN apt-get -y install openssl
RUN usermod -aG shadow nginx
COPY bin/certs.sh .
COPY bin/start-nginx.sh .
CMD ["./start-nginx.sh"]
