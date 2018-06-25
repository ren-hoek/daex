FROM analysis/base

#COPY install-packages.r /tmp/R/
#RUN R -f /tmp/R/install-packages.r

RUN wget https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb
RUN gdebi --non-interactive rstudio-server-1.1.383-amd64.deb
RUN echo "server-app-armor-enabled=0" >> /etc/rstudio/rserver.conf
EXPOSE 8787

RUN mkdir /home/rstudio
RUN useradd -d /home/rstudio -s /bin/bash rstudio
RUN echo "rstudio:rstudio" | chpasswd 

RUN cp /etc/passwd /etc/opt
RUN cp /etc/shadow /etc/opt
RUN cp /etc/group /etc/opt
RUN cp /etc/gshadow /etc/opt

RUN ln -sf /etc/opt/passwd /etc/passwd
RUN ln -sf /etc/opt/shadow /etc/shadow
RUN ln -sf /etc/opt/group /etc/group
RUN ln -sf /etc/opt/gshadow /etc/gshadow

RUN chown -R "rstudio:rstudio" /home/rstudio
ADD start-rserver.sh .
ENTRYPOINT ["tini", "--"]
CMD ["./start-rserver.sh"]
