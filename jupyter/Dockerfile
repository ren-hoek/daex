FROM centos
RUN yum -y update
RUN yum -y install yum-utils
RUN yum -y groupinstall development
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u python36u-pip python36u-devel
RUN ln -s /bin/pip3.6 /bin/pip
RUN pip install --no-cache-dir -U pip
RUN yum -y install nodejs
RUN npm install -g configurable-http-proxy
RUN pip install --no-cache-dir -U notebook jupyterhub jupyterlab virtualenv
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

RUN useradd jupyter
RUN echo "jupyter:jupyter" | chpasswd 

RUN cp /etc/passwd /etc/opt
RUN cp /etc/shadow /etc/opt
RUN cp /etc/group /etc/opt
RUN cp /etc/gshadow /etc/opt

RUN ln -sf /etc/opt/passwd /etc/passwd
RUN ln -sf /etc/opt/shadow /etc/shadow
RUN ln -sf /etc/opt/group /etc/group
RUN ln -sf /etc/opt/gshadow /etc/gshadow

COPY jupyter.crt .
COPY jupyter.key .
ADD bin/start-jupyter.sh .
CMD ["./start-jupyter.sh"]

EXPOSE 8000
